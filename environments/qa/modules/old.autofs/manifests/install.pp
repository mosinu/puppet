class autofs::install {
   package { [ "autofs" ]:
       ensure => present
   }

   package { [ "nfs-utils" ]:
        ensure => present
   }

#   package { [ "rpcbind" ]:
#        ensure => present
#   }

}
