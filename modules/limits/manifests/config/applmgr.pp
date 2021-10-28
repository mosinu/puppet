class limits::config::applmgr {
  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

	file { "/etc/security/limits.conf":
	  ensure => present,
          content => template("${module_name}/limits.conf.applmgr.erb"),
	  mode => 0644,
          backup => ".orig",
	}

}

