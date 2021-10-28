class mail::config {

        case $operatingsystem {
      	    'Scientific', 'CentOS', 'Fedora', 'RedHat': { 
      	       $conf_template   = 'main.cf.redhat'
             }
            'SuSE', 'OpenSuSE', 'SLES': {    
      	       $conf_template   = 'main.cf.suse'
             }
            default: {
               fail( "Unsupported platform: ${::operatingsystem}" )
            }

        }

	file { "/etc/postfix/main.cf":
	   ensure => present,
	   source => "puppet://$puppetserver/modules/${module_name}/$conf_template",
           owner  => "root",
           group  => "root",
           mode   => 744,
	   backup => ".orig",
        }


        file { "/etc/aliases":
           ensure => present,
           source => "puppet:///modules/${module_name}/aliases",
           owner  => "root",
           group  => "root",
           mode   => 744,
           backup => ".orig",
        }

}
