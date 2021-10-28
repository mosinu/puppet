class systems::errata {

    case $environment {
        'prod': {
      	  case $operatingsystem {
      	    'Scientific', 'CentOS', 'Fedora', 'RedHat': { 
	       case $operatingsystemrelease {
		    '6.1', '6.2', '6.3', '6.4': {
      	            $errata_packages = [ "fprintd-pam",
                           	         "fprintd",
                                         "puppet-3.1.1",
                                         "libselinux-ruby", ]
		    }
		    '5.8', '5.9': {
		    $errata_packages = [ "puppet-3.1.1", ]
                    }
	        }
	    }
            'SuSE', 'OpenSuSE', 'SLES': {    
               $errata_packages = [ ] 
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
           }
	}
        'qa','dev', 'dr': {
         case $operatingsystem {
            'Scientific', 'CentOS', 'Fedora', 'RedHat': {    
               case $operatingsystemrelease {
                    '6.1','6.2', '6.3', '6.4': {
                    $errata_packages = [ "fprintd-pam",
                                         "fprintd",
					 "puppet-3.1.1",
					 "libselinux-ruby", ]
                    }
                    '5.8', '5.9': {
                    $errata_packages = [ "puppet-3.1.1",  ]
                    }
                }
            }
            'SuSE', 'OpenSuSE', 'SLES': {   
               $errata_packages = [ ]
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
                    '6.1','6.2', '6.3', '6.4': {
                    $errata_packages = [ "fprintd-pam",
                                         "fprintd", ]
                    }
                    '5.8', '5.9': {
                    $errata_packages = [ ]
                    }
                }
            }
            'SuSE', 'OpenSuSE', 'SLES': {   
               $errata_packages = [ ]
             }
    	    default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
	    }
         }
      }
   }
      
      package { [ $errata_packages ]:
        ensure => latest,
      }
      
}

