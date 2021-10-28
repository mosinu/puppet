class users::spectrum {
  File {
     owner => "root",
     group => "root",
     mode => "0744",
  }

  file { "/root/spectrum.sh":
       ensure => present,
       source => "puppet://$puppetserver/modules/users/spectrum.sh",
       backup => ".orig",
  }
  
  exec { "spectrum.sh":
   command => "/bin/sh /root/spectrum.sh",
   path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
   refreshonly => true,
  }

  file { "/opt/NAS":
           ensure => "directory",
           owner  => "spectrum",
           group  => "spectrum",
           mode   => 755,
  } 
}
