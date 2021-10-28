class time::ntp {

    case $environment {
        'prod': {
      	  case $operatingsystem {
      	    'CentOS', 'Fedora', 'RedHat': { 
      	       $service_name    = 'ntpd'
      	       $conf_template   = 'ntp.conf.rhel.erb'
      	       $default_servers = [ "10.10.3.6",
      	   		            "0.rhel.pool.ntp.org",
                                    "1.rhel.pool.ntp.org",
                                    "2.rhel.pool.ntp.org", ]
             }
            'SuSE', 'OpenSuSE': {    
               $service_name    = 'ntp'
               $conf_template   = 'ntp.conf.suse.erb'
               $default_servers = [ "10.10.3.6",
                                    "0.rhel.pool.ntp.org",
                                    "1.rhel.pool.ntp.org",
                                    "2.rhel.pool.ntp.org", ]
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
           }
	}
        'qa','dev': {
         case $operatingsystem {
            'CentOS', 'Fedora', 'RedHat': {    
               $service_name    = 'ntpd'
               $conf_template   = 'ntp.conf.rhel.erb'
               $default_servers = [ "10.35.6.128",
                                    "0.rhel.pool.ntp.org",
                                    "1.rhel.pool.ntp.org",
                                    "2.rhel.pool.ntp.org", ]
             }
            'SuSE', 'OpenSuSE': {   
               $service_name    = 'ntp'
               $conf_template   = 'ntp.conf.suse.erb'
               $default_servers = [ "10.35.6.128",
                                    "0.rhel.pool.ntp.org",
                                    "1.rhel.pool.ntp.org",
                                    "2.rhel.pool.ntp.org", ]
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
         }
      }
        default: {
         case $operatingsystem {
            'CentOS', 'Fedora', 'RedHat': {    
               $service_name    = 'ntpd'
               $conf_template   = 'ntp.conf.rhel.erb'
               $default_servers = [ "0.rhel.pool.ntp.org",
                                    "1.rhel.pool.ntp.org",
                                    "2.rhel.pool.ntp.org", ]
             }
            'SuSE', 'OpenSuSE': {   
               $service_name    = 'ntp'
               $conf_template   = 'ntp.conf.suse.erb'
               $default_servers = [ "0.rhel.pool.ntp.org",
                                    "1.rhel.pool.ntp.org",
                                    "2.rhel.pool.ntp.org", ]
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
      
#      package { 'ntp':
#        ensure => installed,
#      }
      
      service { 'ntp':
        name      => $service_name,
        ensure    => running,
        enable    => true,
        subscribe => File['ntp.conf'],
      }
      
      file { 'ntp.conf':
        path    => '/etc/ntp.conf',
        ensure  => file,
        require => Package['ntp'],
        content => template("time/${conf_template}"),
      }
    }
