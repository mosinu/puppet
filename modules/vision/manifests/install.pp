class director::install {

   package { [
	"compat-libstdc++-33" ,
	"compat-libstdc++-33.i686" ,
        "compat-expat1.i686",
        "libstdc++.i686",
        "pam.i686",
             ]:
   ensure => present
   }
#	"compat-libstdc++-296" ,
#	"libstdc++-devel" ,
#	"gcc-c++" ,
#	"glibc-devel" ,
#	"gcc" ,
#	"compat-db" ,
#	"libXt.i386" ,
#	"libXtst" ,
#	"vim-enhanced" ,
#	"gdbm" ,
#	"xterm",
#	"db4" ,
#        "xorg-x11-font-utils",
#	"openmotif-devel"]: 

}
