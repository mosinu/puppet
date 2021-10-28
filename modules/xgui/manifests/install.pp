class xgui::install {

    if $operatingsystemrelease == '5.8' {
        package { [  "compat-libstdc++-33",
                "elfutils-libelf.i386",
                "openmotif",
                "openmotif22",
                "libstdc++-devel",
                "libXp",
                "libXi.i386",
                "libxml2.i386",
                "libX11.i386",
                "libXt.i386",
                "libXtst.i386",
                "xorg-x11-apps",
                "xorg-x11-fonts-truetype",
                "xorg-x11-fonts-misc",
                "xorg-x11-server-utils",
                "xorg-x11-server-Xvfb",
                "xorg-x11-utils",
                "xorg-x11-xauth",
             ]:
             ensure => present
          }
        }
        elsif $operatingsystemrelease == '6.2' {
          package { [  "compat-libstdc++-33",
                "elfutils-libelf.i686",
                "openmotif",
                "openmotif22",
                "libstdc++-devel",
                "libXp",
                "libXi.i686",
                "libxml2.i686",
                "libX11.i686",
                "libXt.i686",
                "libXtst.i686",
                "xorg-x11-apps",
                "xorg-x11-fonts-misc",
                "xorg-x11-server-utils",
                "xorg-x11-utils",
                "xorg-x11-xauth",
             ]:
             ensure => present
            }
        }
	else {
	  warning('neither release matched')
	}
    }
