class sysedge::service {

  service { "sysedge":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["sysedge::config"],
  }

}
