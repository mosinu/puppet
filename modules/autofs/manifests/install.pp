class autofs::install {

   $nfs_tools = $operatingsystem ? {
      OpenSuSE => "nfs-client",
      SLES => "nfs-client",
      default => "nfs-utils",
   }

   package { [ "autofs" ]:
       ensure => present
   }

   package { [ "$nfs_tools" ]:
        ensure => present,
        alias => "nfs-tools",
   }

#   package { [ "rpcbind" ]:
#        ensure => present
#   }

}
