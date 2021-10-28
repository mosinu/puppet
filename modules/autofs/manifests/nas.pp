class autofs::nas {

    case $environment {
        'prod': {
      	       $default_nas             = 'ralnas01'
           }
        'qa','dev','dr': {
               $default_nas             = 'dev-nas01'
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

  file { "/etc/auto.nas":
       ensure => present,
       content => template("autofs/auto.nas.erb"),
       require => Class["autofs::install"],
       notify => Class["autofs::service"],
       backup => ".orig",
  }



}
