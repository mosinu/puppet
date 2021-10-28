class director::config {
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

#        file { "/opt/applmgr":
#           ensure => "directory",
#           owner  => "applmgr",
#           group  => "oaa",
#           mode   => 755,
#        }

#	file { '/usr/lib/libdb.so.2':
#	   ensure => 'link',
#	   target => '/usr/lib/libgdbm.so.2.0.0',
#	}

#	file { "/etc/security/limits.conf":
#	  ensure => present,
#          content => template("orainstall/limits.conf.erb"),
#	  mode => 0644,
#          backup => ".orig",
#	}

}

