class networking {
    # Here you can add stuff to be inhereted by your networking classes
    # nsswitch really should go here
#	file { "/etc/services":
#              ensure => present,
#              source => "puppet:///modules/networking/services",
#              group   => "root",
#              owner => "root",
#              mode  => "0664"

}
 
#class networking::resolver inherits networking { 
#          file { "/etc/resolv.conf": 
#              ensure => present,
#              source => "puppet:///modules/networking/resolv.conf",
#              group   => "root",
#              owner => "root",
#              mode  => "0664"
#          }
#}

#class networking::services  {
#          file { "/etc/services":
#              ensure => present,
#              source => "puppet:///modules/networking/services",
#              group   => "root",
#              owner => "root",
#              mode  => "0664"
#          }
#}

