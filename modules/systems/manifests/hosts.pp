class systems::hosts {

    case $environment {
        'prod': {
      	  case $operatingsystem {
      	    'Scientific', 'CentOS', 'Fedora', 'RedHat': { 
               case $operatingsystemrelease {
                    '6.2', '6.3', '6.4': {
      	       	     $conf_template   = 'hosts_prod.erb'
                     }
                    '5.8', '5.9': {
                     $conf_template   = 'hosts_prod.erb'
                     }
                }
             }
            'SuSE', 'OpenSuSE': {    
               $conf_template   = 'hosts_prod.erb'
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
                     $conf_template   = 'hosts_dev.erb'
                     }
                    '5.8', '5.9': {
                     $conf_template   = 'hosts_dev.erb'
                     }
                }
             }
            'SuSE', 'OpenSuSE': {   
               $conf_template   = 'hosts_dev.erb'
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
                    '6.2', '6.3', '6.4': {
                     $conf_template   = 'hosts.erb'
                     }
                    '5.8', '5.9': {
                     $conf_template   = 'hosts.erb'
                     }
                }
             }
            'SuSE', 'OpenSuSE': {   
               $conf_template   = 'hosts.erb'
             }
    	    default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
	    }
         }
      }
   }
      
      file { 'hosts':
        path    => '/etc/hosts',
        ensure  => file,
        content => template("${module_name}/${conf_template}"),
      }
    }

