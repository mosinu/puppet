class ehealth::config {

        file { "/etc/sysctl.conf":
              ensure => present,
              source => "puppet:///modules/${module_name}/sysctl.conf",
              group   => "root",
              owner => "root",
              mode  => "0644"
        }

}

