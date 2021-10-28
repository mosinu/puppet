class users::exploris_users {
  File {
     owner => "root",
     group => "root",
     mode => "0744",
  }

  file { "/root/exploris_users.sh":
       ensure => present,
       source => "puppet://$puppetserver/modules/users/exploris_users.sh",
       backup => ".orig",
  }
  
  exec { "exploris_users.sh":
   command => "/bin/sh /root/exploris_users.sh",
   path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
   refreshonly => true,
  }
}
