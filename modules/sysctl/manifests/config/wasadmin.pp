class sysctl::config::wasadmin {
  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

#	file { "/etc/security/limits.conf":
#	  ensure => present,
#          content => template("${module_name}/limits.conf.wasadmin.erb"),
#	  mode => 0644,
#          backup => ".orig",
#	}

}

