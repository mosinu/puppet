class edi::instant_client {

  file { "/etc/yum.repos.d/carquest-edi.repo":
       ensure => present,
       content => template("${module_name}/carquest-edi.repo.erb"),
       backup => ".orig",
       }

   package { [
        "oracle-instantclient11.2-basic.x86_64",
	"oracle-instantclient11.2-devel.x86_64",
	"oracle-instantclient11.2-sqlplus.x86_64",
	"cx_Oracle-5.1.2",
        ]:
   ensure => present
   }

        file { "/etc/ld.so.conf.d/oracle.conf":
          ensure => present,
          source => "puppet:///modules/${module_name}/oracle.conf",
          group   => "root",
          owner => "root",
          mode => 0644,
          backup => ".orig",
          notify => Exec['run_ldconfig'],
        }

        exec {'run_ldconfig':
                command => '/sbin/ldconfig',
                path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
                onlyif    =>  "test `cat /etc/ld.so.conf.d/oracle.conf | /bin/grep client | /usr/bin/wc -l` -eq 0",
        }

}
