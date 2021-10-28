class netbackup::service {
  service { "xinetd":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["netbackup::config"],
  }
}
