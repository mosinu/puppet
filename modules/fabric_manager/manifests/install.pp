class fabric_manager::install {

#include java

#  class { 'java':
#    distribution => 'jdk',
#    version      => 'latest',
#  }

   package { [ 
#	"java-1.6.0-openjdk" , # Installed via the java class
	"postgresql" ,
	"ntop" ,
	]: 
   ensure => present
   }

}
