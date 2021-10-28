class ghostscript::service {
  service { "ghostscript":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
  }

}

