class ora_admin::patch_3006854 {

        file { "/root/rhel3_pre_install.sh":
          ensure => present,
          source => "puppet:///modules/${module_name}/rhel3_pre_install.sh",
          group   => "root",
          owner => "root",
          mode => 0744,
          backup => ".orig",
          notify => Exec['run_rhel3_pre_install'],
        }

        exec {'run_rhel3_pre_install':
                command => '/root/rhel3_pre_install.sh',
                path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
                onlyif    =>  "test `ls -l /etc/libcwait.so | /bin/grep libcwait | /usr/bin/wc -l` -eq 0",
        }

}
