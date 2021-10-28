class autofs::edir {

    case $environment {
        'prod': {
               $default_nas             = 'ralnas01'
           }
        'qa','dev','dr': {
               $default_nas             = 'dev-nas02'
         }
      }

      if $nas == undef {
        $nas_real = $default_nas
      }
      else {
        $servers_real = $servers
      }

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/etc/auto.edir":
       ensure => present,
       content => template("autofs/auto.edir.erb"),
       require => Class["autofs::install"],
       notify => Class["autofs::service"],
       backup => ".orig",
  }

}

