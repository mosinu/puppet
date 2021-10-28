class exploris::zend_clusters {

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
            'Scientific', 'CentOS', 'Fedora', 'RedHat': {    
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
      
      package { [
		'zend-server-cluster-manager', 
		'zend-pear', 
		'php-5.2-tidy-zend-server-5.2.17-8.x86_64', 
		'php-5.2-oci8-zend-server-5.2.17-13.x86_64', 
		'php-5.2-dev-zend-server-5.2.17-20.x86_64', 
		'php-5.2-exif-zend-server-5.2.17-9.x86_64', 
		'php-5.2-bcmath-zend-server-5.2.17-8.x86_64', 
		'php-5.2-sqlite-zend-server-5.2.17-8.x86_64', 
		'php-5.2-mhash-zend-server-5.2.17-8.x86_64', 
		'php-5.2-xmlreader-zend-server-5.2.17-7.x86_64', 
		'php-5.2-ldap-zend-server-5.2.17-10.x86_64', 
		'php-5.2-gettext-zend-server-5.2.17-8.x86_64', 
		'php-5.2-mbstring-zend-server-5.2.17-8.x86_64', 
		'php-5.2-imap-zend-server-5.2.17-8.x86_64', 
		'php-5.2-bz2-zend-server-5.2.17-8.x86_64', 
		'php-5.2-ftp-zend-server-5.2.17-8.x86_64', 
		'php-5.2-json-zend-server-5.2.17-8.x86_64', 
		'php-5.2-common-extensions-zend-server-5.0.4-33.noarch', 
		'php-5.2-mysqli-zend-server-5.2.17-12.x86_64', 
		'php-5.2-mysql-zend-server-5.2.17-12.x86_64', 
		'php-5.2-page-cache-zend-server-6:4.0.73-16.x86_64', 
		'php-5.2-tokenizer-zend-server-5.2.17-8.x86_64', 
		'php-5.2-soap-zend-server-5.2.17-8.x86_64', 
		'php-5.2-curl-zend-server-5.2.17-15.x86_64', 
		'php-5.2-mime-magic-zend-server-5.2.17-11.x86_64', 
		'php-5.2-mcrypt-zend-server-5.2.17-8.x86_64', 
		'php-5.2-pdo-pgsql-zend-server-5.2.17-9.x86_64', 
		'php-5.2-pgsql-zend-server-5.2.17-8.x86_64', 
		'php-5.2-xmlwriter-zend-server-5.2.17-7.x86_64', 
		'php-5.2-calendar-zend-server', 
		'php-5.2-gd-zend-server', 
		'php-5.2-xsl-zend-server', 
		'php-5.2-sockets-zend-server-5.2.17-8.x86_64', 
		'php-5.2-pdo-oci-zend-server-5.2.17-16.x86_64', 
		'php-5.2-data-cache-zend-server-4.0.59-11.x86_64', 
		'php-5.2-session-clustering-zend-server-4.2.75-56.x86_64', 
		'php-5.2-download-server-zend-server-1.5.48-17.x86_64', 
		'php-5.2-monitor-lite-zend-server-4.1.146-42.x86_64', 
		'php-5.2-zend-extensions-5.0.4-37.noarch', 
		]:
        ensure => installed,
      }

#     package { 'php-5.2-cm-utils-pe-zend-server-1.0.14-18.x86_64.rpm', :
#     ensure => absent,
#      }

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
        require => Package['zend-server-cluster-manager'],
        content => template("${module_name}/${conf_template}"),
	owner => "root",
	group   => "zend",
	mode  => "0664"
      }

        file { "/etc/yum.repos.d/exploris-php.repo":
              ensure => present,
              source => "puppet:///modules/${module_name}/exploris-php.repo",
              group   => "root",
              owner => "root",
              mode  => "0644"
        }


    }

