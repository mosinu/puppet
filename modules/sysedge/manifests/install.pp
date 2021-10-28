# Make certain sysedge is installed

class sysedge::install {

Package {
    provider => $operatingsystem ? {
        centos => yum,
        RedHat => yum,
        fedora => yum,
	Scientific => yum,
        OpenSuSE => zypper,
        SLES => zypper,
    }
}

   package { [ "sysedge" ]:
       ensure => "latest"
   }
   
   package { [ "glibc.i686" ]:
	ensure => present
   }

}

