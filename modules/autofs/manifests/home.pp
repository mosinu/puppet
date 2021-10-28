class autofs::home {

    case $environment {
        'prod': {
               $nas             = 'ralnas01'
           }
        'qa','dev','dr': {
               $nas             = 'dev-nas01'
         }
      }


#      if $nas == undef {
#        $nas = "clenas01"
#      }
#      else {
#        $servers_real = $servers
#      }
      
#      package { 'ntp':
#        ensure => installed,
#      }
      
  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

#       content => template("autofs/auto.home.${nas}.erb"),

  file { "/etc/auto.home":
       ensure => present,
       content => template("autofs/auto.home.erb"),
       require => Class["autofs::install"],
       notify => Class["autofs::service"],
       backup => ".orig",
  }



}
