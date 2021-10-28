class kibana::install {

	package { [ 
		"httpd-devel",
		]: 
	ensure => present
	}

	file { "kibana.tar.gz":
		ensure => present,
		path => "/var/www/html",
		source => "puppet:///modules/${module_name}/kibana.tar.gz",
		group => "root",
		owner => "root",
		mode  => "0755",
	}

}
