class networking::services  {
          file { "/etc/services":
              ensure => present,
              source => "puppet:///modules/networking/services",
              group   => "root",
              owner => "root",
              mode  => "0664"
          }
}

