class users::cabi {
  File {
     owner => "root",
     group => "root",
     mode => "0744",
  }

  file { "/root/cabi.sh":
       ensure => present,
       source => "puppet://$puppetserver/modules/users/cabi.sh",
       backup => ".orig",
  }
  
  exec { "cabi.sh":
   command => "/bin/sh /root/cabi.sh",
   path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
   #refreshonly => true,
  }
}
