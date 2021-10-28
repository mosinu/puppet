# Make certain sysedge is installed
class sysedge::install {
   package { [ "sysedge" ]:
       ensure => present
   }
   
   package { [ "glibc.i686" ]:
	ensure => present
   }
}

