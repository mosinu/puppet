class logstash::install {

#       "java-1.7.0-openjdk" , # Installed via the java class

	package { [ 
		"httpd",
		]: 
	ensure => present
	}

	file { [
		"/opt/logstash",
		"/opt/logstash/patterns",
		]:
		ensure => "directory",
		owner  => "root",
		group  => "root",
		mode  => "0755",
	}

	file { "logstash-1.1.13-flatjar.jar":
		ensure => present,
		path => "/opt/logstash/logstash.jar",
		source => "puppet:///modules/${module_name}/logstash-1.1.13-flatjar.jar",
		group => "root",
		owner => "root",
		mode  => "0755",
	}

}
