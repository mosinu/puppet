class users::gpiadm {

     group { "gpiadm":
             ensure => present,
             gid => 5051
     }

     group { "gpiap":
             ensure => present,
             gid => 5025
     }

     group { "gpiar":
             ensure => present,
             gid => 5026
     }

     group { "gpiben":
             ensure => present,
             gid => 5027
     }

     group { "gpiec":
             ensure => present,
             gid => 5028
     }

     group { "gpihr":
             ensure => present,
             gid => 5029
     }

     group { "gpiinv":
             ensure => present,
             gid => 5030
     }

     group { "gpipay":
             ensure => present,
             gid => 5031
     }

     group { "gpipo":
             ensure => present,
             gid => 5032
     }

     group { "gpigl":
             ensure => present,
             gid => 5033
     }

     user { "gpiadm":
           ensure     => "present",
           managehome => true,
           uid        => '5051',
           gid        => '5051',
           home       => '/opt/ftphome/gpiadm',
           password   => '$1$NdJSD61i$czJReBfyq4zRUntJ4ZdJR.',
           comment    => 'Oracle GPI ADM ftp user',
           groups     => ["gpiadm", "gpiap", "gpiar", "gpiben", "gpiec", "gpihr", "gpiinv", "gpipay", "gpipo", "gpigl"],
     }

     user { "gpiap":
           ensure     => "present",
           managehome => true,
           uid        => '5025',
           gid        => '5025',
           home       => '/opt/ftphome/gpiadm/gpiap',
           password   => '$1$48mkoV/V$fPU371bnX7N0D9/ybXM600',
           comment    => 'Oracle GPI ADM ftp user',
     }

     user { "gpiar":
           ensure     => "present",
           managehome => true,
           uid        => '5026',
           gid        => '5026',
           home       => '/opt/ftphome/gpiadm/gpiar',
           password   => '$1$DHfEwG56$6Q7fncz5uwR631Ew2yakY.',
           comment    => 'Oracle GPI ADM ftp user',
     }

     user { "gpiben":
           ensure     => "present",
           managehome => true,
           uid        => '5027',
           gid        => '5027',
           home       => '/opt/ftphome/gpiadm/gpiben',
           password   => '$1$lC/QhjLZ$vnsFt1ERY6HSoLP4.Zf3m0',
           comment    => 'Oracle GPI ADM ftp user',
     }

     user { "gpiec":
           ensure     => "present",
           managehome => true,
           uid        => '5028',
           gid        => '5028',
           home       => '/opt/ftphome/gpiadm/gpiec',
           password   => '$1$RmI8i.rk$K2HSgQ0xjnLwKlzXvYrtX/',
           comment    => 'Oracle GPI ADM ftp user',
     }

     user { "gpihr":
           ensure     => "present",
           managehome => true,
           uid        => '5029',
           gid        => '5029',
           home       => '/opt/ftphome/gpiadm/gpihr',
           password   => '$1$ErIEQvJf$MeoGeNcFq5tpU63a1zsUa.',
           comment    => 'Oracle GPI ADM ftp user',
     }

     user { "gpiinv":
           ensure     => "present",
           managehome => true,
           uid        => '5030',
           gid        => '5030',
           home       => '/opt/ftphome/gpiadm/gpiinv',
           password   => '$1$DLP2S8CD$crg52it8nC1YDhn9UTTMb.',
           comment    => 'Oracle GPI ADM ftp user',
     }

     user { "gpipay":
           ensure     => "present",
           managehome => true,
           uid        => '5031',
           gid        => '5031',
           home       => '/opt/ftphome/gpiadm/gpipay',
           password   => '$1$.2xlmJtH$6hQZ7U2zVhaivRig6i.Od0',
           comment    => 'Oracle GPI ADM ftp user',
     }

     user { "gpipo":
           ensure     => "present",
           managehome => true,
           uid        => '5032',
           gid        => '5032',
           home       => '/opt/ftphome/gpiadm/gpipo',
           password   => '$1$ExlmF/8A$JO8Evpw.g8o4owHQJkwKK/',
           comment    => 'Oracle GPI ADM ftp user',
     }

     user { "gpigl":
           ensure     => "present",
           managehome => true,
           uid        => '5033',
           gid        => '5033',
           home       => '/opt/ftphome/gpiadm/gpigl',
           password   => '$1$ysBi9DC3$FBmhrteLgCc304Y.kn7vl1',
           comment    => 'Oracle GPI ADM ftp user',
     }

}
