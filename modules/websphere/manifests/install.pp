class websphere::install {

   package { [ 
        "compat-libstdc++-33",
	"compat-db" ,
	"ksh" ,
	"vim-enhanced" ,
	"gtk2" ,
	"gtk2-engines",
	"libXp" ,
        "libXmu",
	"libXtst",
	"pam",
	"rpm-build",
	"elfutils",
	"elfutils-libs",
	"libXft",
	"libstdc++",
	"firefox",
	"xorg-x11-apps",
	"xorg-x11-xauth",
	"gcc",
	"kernel-devel",
	"liberation-sans-fonts",
	"compat-libstdc++-33.i686",
	"compat-db.i686",
	"libXp.i686",
	"libXmu.i686",
	"libXtst.i686",
	"pam.i686",
	"libXft.i686",
	"gtk2.i686",
	"gtk2-engines.i686",
	"libcanberra.i686",
	"libgcc.i686",
	"libcanberra-gtk2.i686",
	"PackageKit-gtk-module.i686",
	]: 
   ensure => present
   }

}
