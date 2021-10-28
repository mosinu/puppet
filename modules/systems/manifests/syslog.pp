class systems::syslog {

    case $environment {
        'prod': {
      	  case $operatingsystem {
      	    'Scientific', 'CentOS', 'Fedora', 'RedHat': { 
               case $operatingsystemrelease {
                    '6.1', '6.2', '6.3', '6.4': {
                     $service_name    = 'rsyslog'
      	       	     $conf_template   = 'rsyslog_prod.erb'
                     $conf_file       = '/etc/rsyslog.conf'
                     }
                    '5.8', '5.9': {
                     $service_name    = 'syslog'
                     $conf_template   = 'syslog_prod.erb'
                     $conf_file       = '/etc/syslog.conf'
                     }
                }
             }
            'SLES', 'OpenSuSE': {    
               $conf_template   = 'syslog_prod.erb'
               $conf_file       = '/etc/syslog.conf'
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
          }
	}
        'qa','dev','test': {
         case $operatingsystem {
            'Scientific', 'CentOS', 'Fedora', 'RedHat': {    
               case $operatingsystemrelease {
                    '6.2', '6.3', '6.4': {
                     $conf_template   = 'rsyslog_dev.erb'
                     $service_name    = 'rsyslog'
                     $conf_file       = '/etc/rsyslog.conf'
                     }
                    '5.8', '5.9': {
                     $service_name    = 'syslog'
                     $conf_template   = 'syslog_dev.erb'
                     $conf_file       = '/etc/syslog.conf'
                     }
                }
             }
            'SLES', 'OpenSuSE': {   
               $conf_template   = 'syslog_dev.erb'
               $conf_file       = '/etc/syslog.conf'
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
         }
      }
        default: {
         case $operatingsystem {
            'Scientific', 'CentOS', 'Fedora', 'RedHat': {    
               case $operatingsystemrelease {
                    '6.1', '6.2', '6.3', '6.4': {
                     $conf_template   = 'rsyslog.erb'
                     $service_name    = 'rsyslog'
                     $conf_file       = '/etc/rsyslog.conf'
                     }
                    '5.8', '5.9': {
                     $conf_template   = 'syslog.erb'
                     $service_name    = 'syslog'
                     $conf_file       = '/etc/syslog.conf'
                     }
                }
             }
            'SLES', 'OpenSuSE': {   
               $conf_template   = 'syslog.erb'
               $conf_file       = '/etc/syslog.conf'

             }
    	    default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
	    }
         }
      }
   }
      service { 'syslog':
        name      => $service_name,
        ensure    => running,
        enable    => true,
        subscribe => File[$conf_file],
      }
      

      file { 'syslog':
        path    => $conf_file,
        ensure  => file,
        content => template("${module_name}/${conf_template}"),
      }
    }

