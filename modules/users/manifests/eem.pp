class users::eem {
  File {
     owner => "root",
     group => "root",
     mode => "0744",
  }

  file { "/root/eem.sh":
       ensure => present,
       source => "puppet://$puppetserver/modules/users/eem.sh",
       backup => ".orig",
  }
  
  exec { "eem.sh":
   command => "/bin/sh /root/eem.sh",
   path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
   refreshonly => true,
  }

  file { [ "/opt/CA",
           "/opt/CA/Directory",
           "/opt/CA/Directory/dxserver",
           "/opt/CA/eem_install",
         ]:
           ensure => "directory",
           owner  => "dsa",
           group  => "etrdir",
           mode   => 755,
  }

}
