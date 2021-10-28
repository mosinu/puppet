class orainstall::install {

   package { [ 
	"compat-libstdc++-296" ,
	"gcc-c++" ,
	"glibc-devel" ,
	"gcc" ,
	"compat-db" ,
	"vim-enhanced" ,
	"gdbm" ,
	"xterm",
	"db4" ,
        "xorg-x11-font-utils",
	"openmotif-devel",
	"openmotif21.i386",
	"jdk",
	]: 
   ensure => present
   }

}
