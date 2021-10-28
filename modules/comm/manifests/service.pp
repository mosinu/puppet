class comm::service {

        service { "vsftpd":
          ensure => running,
          enable => true,
          hasstatus => true,
          hasrestart => true,
        }

}
