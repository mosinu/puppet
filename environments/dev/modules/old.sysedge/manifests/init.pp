#class sysedge {
#   package { "sysedge":
#       ensure => installed
#   }
#   service { "ntp":
#       ensure => running,
#   }
#}

#class sysedge::bp.conf {
#   file { "/usr/openv/sysedge/bp.conf":
#      ensure => present,
#      source => "puppet://$puppetserver/modules/sysedge/bp.conf",
#      group   => "root",
#      owner => "root",
#      mode  => "0644"
#   }
#}
class sysedge {
  include sysedge::install, sysedge::config, sysedge::service
}

