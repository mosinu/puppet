class repo::config {

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

    case $environment {
        'prod': {
      	  case $operatingsystem {
      	    'CentOS', 'Fedora', 'RedHat': { 
      	       $conf_template   = 'rhel-cobbler-config.repo.erb'
             }
            'Scientific' : {
               $conf_template   = 'sci-cobbler-config.repo.erb'
	     }
            'SuSE', 'OpenSuSE', 'SLES': {    
               $conf_template   = 'suse-cobbler-config.repo.erb'
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
           }
	}
        'qa','dev': {
         case $operatingsystem {
            'CentOS', 'Fedora', 'RedHat': {   
               $conf_template   = 'rhel-cobbler-config.repo.erb'
             }
            'Scientific' : {
               $conf_template   = 'sci-cobbler-config.repo.erb'
             }
            'SuSE', 'OpenSuSE', 'SLES': {   
               $conf_template   = 'suse-cobbler-config.repo.erb'
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
         }
      }
        'dr': {
          case $operatingsystem {
            'CentOS', 'Fedora', 'RedHat': {   
               $conf_template   = 'rhel-cobbler-config.repo.erb'
             }
            'Scientific' : {
               $conf_template   = 'sci-cobbler-config.repo.erb'
             }
            'SuSE', 'OpenSuSE', 'SLES': {
               $conf_template   = 'suse-cobbler-config.repo.erb'
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
           }
        }
        default: {
         case $operatingsystem {
            'CentOS', 'Fedora', 'RedHat': {   
               $conf_template   = 'rhel-cobbler-config.repo.erb'
             }
            'Scientific' : {
               $conf_template   = 'sci-cobbler-config.repo.erb'
             }
            'SuSE', 'OpenSuSE', 'SLES': {   
               $conf_template   = 'suse-cobbler-config.repo.erb'
             }
    	    default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
	    }
         }
      }
   }
      
       file { "cobbler-config.repo":
       path => '/etc/yum.repos.d/cobbler-config.repo',
       ensure => present,
       content => template("${module_name}/${conf_template}"),
       backup => ".orig",
      }

  file { "/etc/yum.repos.d/carquest-puppet.repo":
       ensure => present,
       content => template("${module_name}/carquest-puppet.repo.erb"),
       backup => ".orig",
       }

  file { "/etc/yum.repos.d/sl.repo":
       ensure => absent,
       }

  file { "/etc/yum.repos.d/sl-other.repo":
       ensure => absent,
       }

}

