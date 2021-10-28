class users::dba_apps {
  File {
     owner => "root",
     group => "root",
     mode => "0744",
  }

  file { "/root/dba_apps.sh":
       ensure => present,
       source => "puppet://$puppetserver/modules/users/dba_apps.sh",
       backup => ".orig",
  }
  
  exec { "dba_apps.sh":
   command => "/bin/sh /root/dba_apps.sh",
   refreshonly => true,
   path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
   #refreshonly => true,
  }
}
