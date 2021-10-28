class ldap::service {
  service { "nscd":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["ldap::config"],
  }
}
