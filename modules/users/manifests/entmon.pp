class users::entmon {
  File {
     owner => "root",
     group => "root",
     mode => "0744",
  }

  file { "/root/entmon.sh":
       ensure => present,
       source => "puppet://$puppetserver/modules/users/entmon.sh",
       backup => ".orig",
  }
  
  exec { "entmon.sh":
   command => "/bin/sh /root/entmon.sh",
   path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
   refreshonly => true,
  }
}
