class exploris::java_install {

#       "java-1.6.0-openjdk" , # Installed via the java class
#	"j2sdk",               # Installed via the java class

#	package { [ 
#
#                  ]:
#	ensure => present
#	}

        file { '/usr/bin/java':
           ensure => 'link',
           target => '/usr/java/j2sdk1.4.2_19/bin/java',
        }

}
