class users::oas_dev {
  File {
     owner => "root",
     group => "root",
     mode => "0744",
  }

  file { "/root/oas_dev.sh":
       ensure => present,
       source => "puppet://$puppetserver/modules/users/oas_dev.sh",
       backup => ".orig",
  }
  
  exec { "oas_dev.sh":
   command => "/bin/sh /root/oas_dev.sh",
   path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
   refreshonly => true,
  }
}
