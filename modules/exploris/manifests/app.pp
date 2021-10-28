class exploris::app {

        package { [
                "links",
                  ]:
        ensure => present
        }

	file { [
                "/etc/logrotate.conf",
               ]:
           ensure =>            "present",
           owner  =>            "root",
           group  =>            "root",
           mode   => 644,
           source => "puppet://$puppetserver/modules/${module_name}/logrotate.conf",
           backup => ".orig",
        }          

        file { [
                "/etc/logrotate.d/httpd",
               ]:
           ensure =>            "absent",
        }

}
