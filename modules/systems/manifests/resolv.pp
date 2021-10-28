class systems::resolv {
    case $environment {
        'prod': {
      	  case $operatingsystem {
      	    'AIX', 'Scientific', 'CentOS', 'Fedora', 'RedHat': { 
      	       $conf_template   = 'resolv.conf.erb'
      	       $default_servers = [ "10.10.2.18",
                                    "10.10.2.11", ]
             }
            'SuSE', 'OpenSuSE', 'SLES': {    
               $conf_template   = 'resolv.conf.erb'
               $default_servers = [ "10.10.2.18",
                                    "10.10.2.11", ]
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
           }
	}
        'qa','dev': {
         case $operatingsystem {
            'Scientific', 'CentOS', 'Fedora', 'RedHat': {    
               $conf_template   = 'resolv.conf.erb'
               $default_servers = [ "10.35.6.128",
                                    ]
             }
            'SuSE', 'OpenSuSE', 'SLES': {   
               $conf_template   = 'resolv.conf.erb'
               $default_servers = [ "10.35.6.128",
                                    ]
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
         }
      }
        'dr': {
          case $operatingsystem {
            'Scientific', 'CentOS', 'Fedora', 'RedHat': {
               $conf_template   = 'resolv.conf.erb'
               $default_servers = [ "10.130.6.1",
                                    "10.10.2.18", ]
             }
            'SuSE', 'OpenSuSE', 'SLES': {
               $conf_template   = 'resolv.conf.erb'
               $default_servers = [ "10.130.6.1",
                                    "10.10.2.18", ]
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
           }
        }
        default: {
         case $operatingsystem {
            'Scientific', 'CentOS', 'Fedora', 'RedHat': {    
               $conf_template   = 'resolv.conf.erb'
               $default_servers = [ "10.10.2.18",
				    "10.35.6.128",
                                    "10.10.2.11", ]
             }
            'SuSE', 'OpenSuSE', 'SLES': {   
               $conf_template   = 'resolv.conf.erb'
               $default_servers = [ "10.10.2.18",
				    "10.35.6.128",
                                    "10.10.2.11", ]
             }
    	    default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
	    }
         }
      }
   }
      
      if $servers == undef {
        $servers_real = $default_servers
      }
      else {
        $servers_real = $servers
      }
      
      file { 'resolv.conf':
        path    => '/etc/resolv.conf',
        ensure  => file,
        content => template("${module_name}/${conf_template}"),
      }
    }

