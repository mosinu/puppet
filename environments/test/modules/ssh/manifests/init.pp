augeas { "sshd_config":
  context => "/files/etc/ssh/sshd_config",
  changes => [
    # track which key was used to logged in
    "set LogLevel VERBOSE",
    # permit root logins only using publickey
    "set PermitRootLogin without-password",
  ],
  notify => Service["sshd"],
}

service { "sshd":
  name => $operatingsystem ? {
    Debian => "ssh",
    default => "sshd",
  },
  require => Augeas["sshd_config"],
  enable => true,
  ensure => running,
}

