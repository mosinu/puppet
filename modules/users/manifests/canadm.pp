class users::canadm {

     group { "canadm":
             ensure => present,
             gid => 5023
     }

     group { "canap":
             ensure => present,
             gid => 5034
     }

     group { "canar":
             ensure => present,
             gid => 5035
     }

     group { "canben":
             ensure => present,
             gid => 5036
     }

     group { "canec":
             ensure => present,
             gid => 5037
     }

     group { "canhr":
             ensure => present,
             gid => 5038
     }

     group { "caninv":
             ensure => present,
             gid => 5039
     }

     group { "canpay":
             ensure => present,
             gid => 5040
     }

     group { "canpo":
             ensure => present,
             gid => 5041
     }

     group { "cangl":
             ensure => present,
             gid => 5042
     }


     user { "canadm":
           ensure     => "present",
           managehome => true,
           uid        => '5023',
           gid        => '5023',
           home       => '/opt/ftphome/canadm',
           password   => '$1$fYuwo2eX$VzqEiu/Cj9b7FBXIwDrI0.',
           comment    => 'Oracle CAN ADM ftp user',
           groups     => ["canadm", "canap", "canar", "canben", "canec", "canhr", "caninv", "canpay", "canpo", "cangl"],
     }

     user { "canap":
           ensure     => "present",
           managehome => true,
           uid        => '5034',
           gid        => '5034',
           home       => '/opt/ftphome/canadm/canap',
           password   => '$1$u2Qv8v28$TTmL1d0tfxP6BJX3M4OZ//',
           comment    => 'Oracle CAN ADM ftp user',
     }
 
     user { "canar":
           ensure     => "present",
           managehome => true,
           uid        => '5035',
           gid        => '5035',
           home       => '/opt/ftphome/canadm/canar',
           password   => '$1$yFtQN6GV$iLPhaVdpmmHVzMiB9yT1s1',
           comment    => 'Oracle CAN ADM ftp user',
     }

     user { "canben":
           ensure     => "present",
           managehome => true,
           uid        => '5036',
           gid        => '5036',
           home       => '/opt/ftphome/canadm/canben',
           password   => '$1$bGPVuCmz$e1VI6Pc8p9AuUiVPVZmdx0',
           comment    => 'Oracle CAN ADM ftp user',
     }

     user { "canec":
           ensure     => "present",
           managehome => true,
           uid        => '5037',
           gid        => '5037',
           home       => '/opt/ftphome/canadm/canec',
           password   => '$1$W0bszR2v$cuFQw0qF6yoEsDosjZOoL.',
           comment    => 'Oracle CAN ADM ftp user',
     }

     user { "canhr":
           ensure     => "present",
           managehome => true,
           uid        => '5038',
           gid        => '5038',
           home       => '/opt/ftphome/canadm/canhr',
           password   => '$1$amiIFCxT$rf/CJ34PytNSUL0zKOCdO1',
           comment    => 'Oracle CAN ADM ftp user',
     }

     user { "caninv":
           ensure     => "present",
           managehome => true,
           uid        => '5039',
           gid        => '5039',
           home       => '/opt/ftphome/canadm/caninv',
           password   => '$1$aRRR2ZDb$0MD7sxncoDdkImlOeP4Sf1',
           comment    => 'Oracle CAN ADM ftp user',
     }

     user { "canpay":
           ensure     => "present",
           managehome => true,
           uid        => '5040',
           gid        => '5040',
           home       => '/opt/ftphome/canadm/canpay',
           password   => '$1$6umASOip$QcgYfLe8gfwcqNxqMaz2U.',
           comment    => 'Oracle CAN ADM ftp user',
     }

     user { "canpo":
           ensure     => "present",
           managehome => true,
           uid        => '5041',
           gid        => '5041',
           home       => '/opt/ftphome/canadm/canpo',
           password   => '$1$CblN8z1A$lZ5wWPzftXfsIfpcac9nJ1',
           comment    => 'Oracle CAN ADM ftp user',
     }

     user { "cangl":
           ensure     => "present",
           managehome => true,
           uid        => '5042',
           gid        => '5042',
           home       => '/opt/ftphome/canadm/cangl',
           password   => '$1$UDAUHoeA$PnwDyzUAeoIel/eLnPSjn1',
           comment    => 'Oracle CAN ADM ftp user',
     }

}
