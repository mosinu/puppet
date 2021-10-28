class netbackup::agent {

   package { [
        "netbackup" ,
        ]:
   ensure => absent
   }

   package { [
        "SYMCnbclt" ,
        "SYMCnbjava" ,
        "SYMCnbjre" ,
        "SYMCpddea" ,
        "VRTSpbx" ,
        "libstdc++.i686" ,
        ]:
   ensure => present
   }


}
