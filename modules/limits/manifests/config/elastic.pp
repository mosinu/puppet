class limits::config::elastic {
  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

	file { "/etc/security/limits.conf":
	  ensure => present,
          content => template("${module_name}/limits.conf.elastic.erb"),
	  mode => 0644,
          backup => ".orig",
	}

#	file { "/etc/sysctl.conf":
#		ensure => present,
#		content => template("${module_name}/sysctl.conf.wasadmin.erb"),
#		backup => ".orig",
#		notify => Exec['sysctl_run'],
#	}

#	exec { "sysctl_run":
#		command => "/sbin/sysctl -p",
#		refreshonly => true,
#		path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
#	}


}

