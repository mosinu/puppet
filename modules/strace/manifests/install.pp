class strace::install {

   package { [ "strace.i386" ]:
        ensure => present,
   }

}
