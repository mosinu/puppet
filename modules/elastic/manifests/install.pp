class elastic::install {

#       "java-1.7.0-openjdk" , # Installed via the java class

	package { [ 
		"elasticsearch",
		]: 
	ensure => present
	}

}
