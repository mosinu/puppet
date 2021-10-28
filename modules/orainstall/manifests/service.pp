class orainstall::service {
  service { "orainstall":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["orainstall::config"],
  }

  service { "rpcbind":
    ensure => running,
    enable => true,
  }

}

