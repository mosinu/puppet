class users::ehealth {
  File {
     owner => "root",
     group => "root",
     mode => "0744",
  }

  file { "/root/ehealth.sh":
       ensure => present,
       source => "puppet://$puppetserver/modules/users/ehealth.sh",
       backup => ".orig",
  }
  
  exec { "ehealth.sh":
   command => "/bin/sh /root/ehealth.sh",
   path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
   refreshonly => true,
  }
}
