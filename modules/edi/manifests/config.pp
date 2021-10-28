class edi::config {

  File {
     owner => "root",
     group => "root",
     mode => "0664",
  }

#	file { "/opt/mysql":
#	   ensure => "directory",
#           owner  => "mysql",
#           group  => "mysql",
#           mode   => 775,
#	}

        file { "/usr/lib/python2.6/site-packages/":
           ensure => "directory",
#	   recurse => true,
           owner  => "root",
           group  => "gpibots",
           mode   => 0775,
        }

        file { "/usr/lib/python2.6/site-packages/bots/":
           ensure => 'link',
           target => '/opt/bots',
        }

        file { "/opt/bots":
           ensure => "directory",
           recurse => true,
           owner  => "gpibots",
           group  => "gpibots",
           mode   => 2775,
        }

        file { "/opt/gpi":
           ensure => "directory",
           recurse => true,
           owner  => "gpibots",
           group  => "gpibots",
           mode   => 2775,
        }

        file { "/var/log/httpd":
           ensure => "directory",
           recurse => true,
           owner  => "apache",
           group  => "apache",
           mode   => 2775,
        }


}

