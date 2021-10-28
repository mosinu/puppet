class mail::service {

        case $operatingsystem {
            'Scientific', 'CentOS', 'Fedora', 'RedHat': {

               service { "sendmail":
                 ensure => stopped,
                 hasstatus => true,
                 hasrestart => true,
                 enable => false,
               }

             }

            'SuSE', 'OpenSuSE', 'SLES': {
             }

            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }

        }

  service { "postfix":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
  }

}

