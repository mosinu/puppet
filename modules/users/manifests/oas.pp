class users::oas {
  File {
     owner => "root",
     group => "root",
     mode => "0744",
  }

  file { "/root/oas.sh":
       ensure => present,
       source => "puppet://$puppetserver/modules/users/oas.sh",
       backup => ".orig",
  }
  
  exec { "oas.sh":
   command => "/bin/sh /root/oas.sh",
   path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
   refreshonly => true,
  }
}
