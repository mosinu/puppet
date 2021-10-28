class autofs::service {
  service { "autofs":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["autofs::config"],
  }

#  service { "rpcbind":
#    ensure => running,
#    enable => true,
#    hasstatus => true,
#    hasrestart => true,
#  }

}

