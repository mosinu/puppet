# Make certain puppet is installed
class puppet::install {
   package { [ "puppet" ]:
       ensure => present
   }
}

