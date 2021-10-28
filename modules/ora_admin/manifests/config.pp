class ora_admin::config {
  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

    #    file { "/opt/applmgr":
    #       ensure => "directory",
    #       owner  => "applmgr",
    #       group  => "oaa",
    #       mode   => 755,
    #    }

#	file { "/etc/security/limits.conf":
#	  ensure => present,
#          content => template("orainstall/limits.conf.erb"),
#	  mode => 0644,
#          backup => ".orig",
#	}


#	file { '/usr/lib/libdb.so.2':
#	   ensure => 'link',
#	   target => '/usr/lib/libgdbm.so.2.0.0',
#	}

#	file { '/lib/libdb.so.3':
#	   ensure => 'link',
#          target => '/lib/libdb-4.3.so',
#	}

       file { '/usr/local/bin/curl':
          ensure => 'link',
          target => '/usr/bin/curl',
       }

       file { '/usr/local/bin/perl':
          ensure => 'link',
          target => '/usr/bin/perl',
       }

}

