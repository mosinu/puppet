class exploris::app_feed {

        package { [
                "mysql",
		"mysqltuner",
		"mysqlreport",
                  ]:
        ensure => present
        }

        file { [
                "/opt/export",
                "/opt/export/dumps",
                "/opt/export/home",
               ]:
           ensure => "directory",
           owner  => "root",
           group  => "root",
           mode   => 755,
        }

        file { [
		"/tmp/control_data_cache",
	       ]:
          ensure => "directory",
           owner  => "apache",
           group  => "apache",
           mode   => 777,
	}

        file { [
                "/usr/local/lib/php/",
               ]:
          ensure => "directory",
           owner  => "expadmin",
           group  => "expadmin",
           mode   => 777,
        }

       file { [
                "/usr/local/exploris",
                "/usr/local/icpw2",
               ]:
          ensure => "directory",
           owner  => "expadmin",
           group  => "expadmin",
           mode   => 775,
        }


        file { [
                "/opt/export/logs/archive",
                "/opt/export/logs/current",
                "/opt/export/logs/EXTRACT",
               ]:
           ensure => "directory",
           owner  => "expadmin",
           group  => "expadmin",
           mode   => 777,
        }

        file { [
                "/opt/export/home/custom",
               ]:
           ensure => "directory",
           owner  => "custom",
           group  => "expadmin",
           mode   => 755,
        }

        file { [
                "/opt/export/home/ftpuser",
               ]:
           ensure => "directory",
           owner  => "ftpuser",
           group  => "expadmin",
           mode   => 777,
        }

        file { [
                "/var/www/html/gpi",
               ]:
           ensure => "directory",
           owner  => "expadmin",
           group  => "expadmin",
           mode   => 0775,
        }

        file { [
                "/opt/export/logs",
                "/opt/export/exploris",
                "/opt/export/exploris/logs",
                "/opt/export/logs/ARPO",
                "/opt/export/logs/ASN",
                "/opt/export/logs/DQX",
                "/opt/export/logs/EOMY",
                "/opt/export/logs/etran",
                "/opt/export/logs/GLS",
                "/opt/export/logs/IVTCOM",
                "/opt/export/logs/IVTMGMT",
                "/opt/export/logs/LBL",
                "/opt/export/logs/MAIL",
                "/opt/export/logs/MCH_RECALL",
                "/opt/export/logs/MCH_STKADJ",
                "/opt/export/logs/MCR",
                "/opt/export/logs/POLL",
                "/opt/export/logs/SNK",
                "/opt/export/logs/TABLEMAINT",
                "/opt/export/logs/TPO",
                "/opt/export/logs/XMIT",
               ]:
           ensure => "directory",
           owner  => "expadmin",
           group  => "expadmin",
           mode   => 777,
        }

        file { '/export':
           ensure => 'link',
           target => '/opt/export',
        }

        file { '/usr/log':
           ensure => 'link',
           target => '/opt/export/exploris/logs',
        }

        file { '/usr/bin/perl5':
           ensure => 'link',
           target => '/usr/bin/perl',
        }

        file { "/usr/local/zend/etc/php.ini":
              ensure => present,
              source => "puppet:///modules/${module_name}/php.ini",
              group   => "zend",
              owner => "root",
              mode  => "0664"
	}

	file { "/usr/local/bin/create_exp_htdocs_links.sh":
              ensure => present,
              source => "puppet:///modules/${module_name}/create_exp_htdocs_links.sh",
              group  => "root",
              owner  => "root",
              mode   => "0555"    
        }

#        service { "zend-server":
#          ensure => running,
#          enable => true,
#          hasstatus => true,
#          hasrestart => true,
#        }

#        file { "/etc/httpd/conf/httpd.conf":
#          ensure => present,
#          content => template("exploris/httpd.conf.erb"),
#          mode => 0644,
#          backup => ".orig",
#        }

#   	service { "httpd":
#          ensure => running,
#          enable => true,
#    	  hasstatus => true,
#    	  hasrestart => true,
#   	}

       file { "/etc/httpd/conf.d/exploris.conf":
              ensure => present,
              group  => "expadmin",
              owner  => "root",
              mode   => "0664"
       }

}
