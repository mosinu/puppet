class ehealth::install {

   package { [ 
	"compat-libstdc++-296" ,
	"gcc-c++" ,
	"glibc-devel" ,
	"gcc" ,
	"compat-db" ,
	"gd" ,
	"libXpm.i386",
	"sharutils" ,
	"libselinux-utils" ,
	]: 
   ensure => present
   }

}
