class exploris::zend_sessions {

    case $environment {
        'prod': {
      	  case $operatingsystem {
      	    'Scientific', 'CentOS', 'Fedora', 'RedHat': { 
               $service_name    = 'zend-server'
      	       $conf_template   = 'scd-prod.ini.erb'
             }
            'SuSE', 'OpenSuSE': {    
               $service_name    = 'zend-server'
               $conf_template   = 'scd-prod.ini.erb'
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
           }
	}
        'qa','dev': {
         case $operatingsystem {
            'Scientific','CentOS', 'Fedora', 'RedHat': {    
               $service_name    = 'zend-server'
               $conf_template   = 'scd-dev.ini.erb'
             }
            'SuSE', 'OpenSuSE': {   
               $service_name    = 'zend-server'
               $conf_template   = 'scd-dev.ini.erb'
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
         }
      }
        default: {
         case $operatingsystem {
            'Scientific', 'CentOS', 'Fedora', 'RedHat': {    
               $service_name    = 'zend-server'
               $conf_template   = 'scd-prod.ini.erb'
             }
            'SuSE', 'OpenSuSE': {   
               $service_name    = 'zend-server'
               $conf_template   = 'scd-prod.ini.erb'
             }
    	    default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
	    }
         }
      }
   }
      
      package { 'php-5.2-session-clustering-zend-server':
        ensure => installed,
      }

      service { 'zend-session':
        name      => $service_name,
        ensure    => running,
        enable    => true,
	hasrestart => true,
        subscribe => File['scd.ini'],
      }

      file { 'scd.ini':
        path    => '/usr/local/zend/etc/scd.ini',
        ensure  => file,
        require => Package['php-5.2-session-clustering-zend-server'],
        content => template("${module_name}/${conf_template}"),
        owner => "root",
        group   => "zend",
        mode  => "0664"

      }
    }

