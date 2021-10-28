class users::middleware {
  File {
     owner => "root",
     group => "root",
     mode => "0744",
  }

  file { "/root/middleware.sh":
       ensure => present,
       source => "puppet://$puppetserver/modules/users/middleware.sh",
       backup => ".orig",
  }
  
  exec { "middleware.sh":
   command => "/bin/sh /root/middleware.sh",
   path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
   refreshonly => true,
  }
}
