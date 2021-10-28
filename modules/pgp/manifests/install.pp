class pgp::install {

   package { [ "pgpcmdln" ]:
        ensure => present
   }
}
