class opsview::install_gui {

   package { [ "libgcc.i686" ]:
        ensure => present
   }

   package { [ "compat-libstdc++-296" ]:
        ensure => present
   }

   package { [ "db4.i686" ]:
        ensure => present
   }

   package { [ "pam.i686" ]:
        ensure => present
   }

}

