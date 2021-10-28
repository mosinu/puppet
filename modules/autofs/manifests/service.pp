class autofs::service {

  service { "autofs":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["autofs::config"],
  }

  case $operatingsystemrelease {
       '6.1', '6.2', '6.3', '6.4' : {
          service { "rpcbind":
            ensure => running,
            enable => true,
            }
       }
       '5.8', '5.9': {
         #service { }
       }
  }
}

