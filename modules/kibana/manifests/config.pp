class logstash::config {

        file { "logstash.conf":
                ensure => present,
                path => "/opt/logstash/logstash.conf",
                source => "puppet:///modules/${module_name}/logstash.conf",
                group => "root",
                owner => "root",
                mode  => "0644",
        }

        file { "logstash.init":
                ensure => present,
                path => "/etc/rc.d/init.d/logstash",
                source => "puppet:///modules/${module_name}/logstash.init",
                group => "root",
                owner => "root",
                mode  => "0755",
		notify => Exec['run_chkconfig'],
        }

        exec {'run_chkconfig':
                command => '/sbin/chkconfig --add logstash',
		refreshonly => true,
                path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
#                onlyif    =>  "test `chkconfig --list logstash | /usr/bin/wc -l` -eq 0",
        }

}
