class omd::config {

  File {
     owner => "root",
     group => "root",
     mode => "0664",
  }

	#file { "/opt/wasprofiles":
	   #ensure => "directory",
           #owner  => "wasadmin",
           #group  => "wasadmin",
           #mode   => 755,
	#}

# moved to new limits module
#	file { "/etc/security/limits.conf":
#	  ensure => present,
#          content => template("${module_name}/limits.conf.erb"),
#	  mode => 0644,
#          backup => ".orig",
#	}
}

