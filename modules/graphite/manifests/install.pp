class graphite::install {

$carbon = "carbon-0.9.10.tar.gz"

        package { [
		"python-memcached",
		"python-ldap",
		"mod_python",
		"python-txamqp",
		"gnu-free-fonts-common", 
		"xorg-x11-fonts-75dpi", 
		"django-tagging", 
		"python-twisted-web", 
		"bitmap-fixed-fonts", 
		"freetype", 
		"httpd", 
		"httpd-devel", 
		"mod_wsgi", 
		"python-pycha", 
		"python-carbon", 
		"python-bucky",
		"python-simplejson",
		"python-sqlite2",
		"pycairo-devel",
		"pycairo",
                  ]:
        ensure => present
        }

       service { "httpd":
         ensure => running,
         enable => true,
         hasstatus => true,
         hasrestart => true,
	subscribe => File['graphite-vhost.conf'],
       }

      file { 'graphite-vhost.conf':
        path    => '/etc/httpd/conf.d/graphite-vhost.conf',
        ensure  => file,
        require => Package['httpd'],
        content => template("${module_name}/graphite-vhost.conf"),
      }

        file { [ 
		"/opt/build",
		"/opt/installed",
		]:
           ensure => "directory",
           recurse => true,
           owner  => "root",
           group  => "root",
           mode   => 775,
        }

	tarball { "whisper-0.9.10.tar.gz":
         module_name => "graphite",
         install_dir => "/opt/build/whisper",
         pkg_tgz     => "whisper-0.9.10.tar.gz",
    	}	

	exec { "Whisper Install":
		command => "python setup.py install && touch /opt/installed/whisper.inst",
		cwd => "/opt/build/whisper-0.9.10/",
		unless  => "test -f /opt/installed/whisper.inst",
		path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
	}

        tarball { "$carbon":
         module_name => "graphite",
         install_dir => "/opt/build/carbon",
         pkg_tgz     => "$carbon",
        }

        exec { "Carbon Install":
                command => "python setup.py install && touch /opt/installed/carbon.inst",
                cwd => "/opt/build/carbon/carbon-0.9.10",
                unless  => "test -f /opt/installed/carbon.inst",
                path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
        }

        tarball { "graphite-web-0.9.10.tar.gz":
         module_name => "graphite",
         install_dir => "/opt/build/graphite",
         pkg_tgz     => "graphite-web-0.9.10.tar.gz",
        }

        exec { "Graphite Install":
                command => "python setup.py install && touch /opt/installed/graphite.inst",
                cwd => "/opt/build/graphite/graphite-web-0.9.10",
                unless  => "test -f /opt/installed/graphite.inst",
                path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
	}

        tarball { "graphite-conf.tar.gz":
         module_name => "graphite",
         install_dir => "/opt/build/conf",
         pkg_tgz     => "graphite-conf.tar.gz",
        }

        exec { "Graphite Conf Install":
                command => "cp -Rp * /opt/graphite/conf/ && cp /opt/graphite/webapp/graphite/local_settings.py.example /opt/graphite/webapp/graphite/local_settings.py  && touch /opt/installed/conf.inst",
                cwd => "/opt/build/conf",
                unless  => "test -f /opt/installed/conf.inst",
                path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
        }


	# this script will have to be run by hand due to an interactive part of the db setup
	file { "/root/dbsetup.sh":
		ensure => present,
		source => "puppet://$puppetserver/modules/graphite/dbsetup.sh",
		backup => ".orig",
	}

	exec { "dbsetup.sh":
		command => "/bin/sh /root/dbsetup.sh",
		refreshonly => true,
		path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
	}

}
