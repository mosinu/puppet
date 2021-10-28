class exploris::zend_install {

	#package { [
#		"php-5.3-fcgi-zend-server-5.3.5-22.x86_64" ]:
 #       ensure => absent
 #       }

	package { [ 
			"help-zend-server-5.0.25-19.noarch",
	 		"liboci8-zend-11.2.0.2-1.x86_64",
			"zend-base-5.1.0-40.x86_64",
                	"zend-server-doc-5.0.11-21.noarch",
                  ]:
	ensure => present
	}
}
