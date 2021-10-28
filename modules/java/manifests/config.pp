class java::config {

  File {
     owner => "root",
     group => "root",
     mode => "0664",
  }

#	file { "/opt/wily":
#	   ensure => "directory",
#           owner  => "wilyadm",
#           group  => "wilyadm",
#           mode   => 755,
#	}

}

