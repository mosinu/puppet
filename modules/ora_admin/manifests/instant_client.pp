class ora_admin::instant_client {

   package { [ 
	"oracle-instantclient-basic.i386" ,
	]: 
   ensure => present
   }

        file { "/etc/ld.so.conf.d/oci.conf":
          ensure => present,
          source => "puppet:///modules/${module_name}/oci.conf",
          group   => "root",
          owner => "root",
          mode => 0644,
          backup => ".orig",
          notify => Exec['run_ldconfig'],
        }

        exec {'run_ldconfig':
                command => '/sbin/ldconfig',
                path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
                onlyif    =>  "test `cat /etc/ld.so.conf.d/oci.conf | /bin/grep client | /usr/bin/wc -l` -eq 0",
        }

}
