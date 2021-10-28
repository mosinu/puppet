class orainstall::config {
  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

#	file { "/opt/oracle":
#	   ensure => "directory",
#           owner  => "oracle",
#           group  => "dba",
#           mode   => 755,
#	}

        file { "/opt/applmgr":
           ensure => "directory",
           owner  => "applmgr",
           group  => "oaa",
           mode   => 755,
        }

        file { "/opt/NAS/":
           ensure => "directory",
           owner  => "root",
           group  => "root",
           mode   => 755,
        }

       file { "/etc/oraInventory":
           ensure => "directory",
           owner  => "applmgr",
           group  => "oaa",
           mode   => 777,
        }

	file { '/usr/lib/libdb.so.2':
	   ensure => 'link',
	   target => '/usr/lib/libgdbm.so.2.0.0',
	}

	file { '/lib/libdb.so.3':
	   ensure => 'link',
           target => '/lib/libdb-4.3.so',
	}

# moved to new limits module
#	file { "/etc/security/limits.conf":
#	  ensure => present,
#          content => template("orainstall/limits.conf.erb"),
#	  mode => 0644,
#          backup => ".orig",
#	}

       file { '/usr/bin/bash':
          ensure => 'link',
          target => '/bin/bash',
       }

}

