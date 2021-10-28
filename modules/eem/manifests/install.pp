class eem::install {

   package { [ "compat-libstdc++-33.i386" ]:
        ensure => present,
   }

}
