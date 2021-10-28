class users::dba {
  File {
     owner => "root",
     group => "root",
     mode => "0744",
  }

  file { "/root/dba.sh":
       ensure => present,
       source => "puppet://$puppetserver/modules/users/dba.sh",
       backup => ".orig",
  }
  
  exec { "dba.sh":
   command => "/bin/sh /root/dba.sh",
   refreshonly => true,
   path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
   #refreshonly => true,
  }
}
