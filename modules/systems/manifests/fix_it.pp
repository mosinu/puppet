class systems::fix_it {

  File {
     owner => "root",
     group => "root",
     mode => "0755",
  }

    case $environment {
        'prod': {
          case $operatingsystem {
            'CentOS', 'Fedora', 'RedHat': {
               case $operatingsystemrelease {
                    '6.2', '6.3': {
			# place holder
		    }
                    '5.8', '5.9': {
			file { "/root/fix_it.sh":
			ensure => present,
			source => "puppet://$puppetserver/modules/${module_name}/fix_it.sh",
			notify => Exec['run_fixit'],
			}
		    }
		}
	    } 
            'SuSE', 'OpenSuSE': {
               # place holder
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
          }
        }
        'qa','dev','test': {
         case $operatingsystem {
            'CentOS', 'Fedora', 'RedHat': {
               case $operatingsystemrelease {
                    '6.2', '6.3': {
                        # place holder
                    }
                    '5.8', '5.9': {
                        file { "/root/fix_it.sh":
                        ensure => present,
                        source => "puppet://$puppetserver/modules/${module_name}/fix_it.sh",
                        notify => Exec['run_fixit'],
                        }
                    }
                }
            }
            'SuSE', 'OpenSuSE': {
               # place holder
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
          }
        }
        default: {
         case $operatingsystem {
            'CentOS', 'Fedora', 'RedHat': {
               case $operatingsystemrelease {
                    '6.2', '6.3': {
                        # place holder
                    }
                    '5.8', '5.9': {
                        file { "/root/fix_it.sh":
                        ensure => present,
                        source => "puppet://$puppetserver/modules/${module_name}/fix_it.sh",
                        notify => Exec['run_fixit'],
                        }
                    }
                }
            }
            'SuSE', 'OpenSuSE': {
               # place holder
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }
          }
        }
      }
	exec {'run_fixit':
		command => '/root/fix_it.sh',
		path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
		onlyif    =>  "test `cat /etc/modprobe.conf | /bin/grep ipv6 | /usr/bin/wc -l` -eq 0",
	}
    
}

