class users::bwpdadm {

     group { "bwpdadm":
             ensure => present,
             gid => 5024
     }

     group { "bwpdap":
             ensure => present,
             gid => 5043
     }

     group { "bwpdar":
             ensure => present,
             gid => 5044
     }

     group { "bwpdce":
             ensure => present,
             gid => 5045
     }

     group { "bwpdec":
             ensure => present,
             gid => 5046
     }

     group { "bwpdgl":
             ensure => present,
             gid => 5047
     }

     group { "bwpdhr":
             ensure => present,
             gid => 5048
     }

     group { "bwpdinv":
             ensure => present,
             gid => 5049
     }

     group { "bwpdpo":
             ensure => present,
             gid => 5050
     }


     user { "bwpdadm":
           ensure     => "present",
           managehome => true,
           uid        => '5024',
           gid        => '5024',
           home       => '/opt/ftphome/bwpdadm',
           password   => '$1$MWrOjHeC$DgfBXBvOVVrW6Eqv9Lwxe0',
           comment    => 'Oracle BWP ADM ftp user',
           groups     => ["bwpdadm", "bwpdap", "bwpdar", "bwpdce", "bwpdec", "bwpdhr", "bwpdinv", "bwpdpo", "bwpdgl"],
     }

     user { "bwpdap":
           ensure     => "present",
           managehome => true,
           uid        => '5043',
           gid        => '5043',
           home       => '/opt/ftphome/bwpdadm/bwpdap',
           password   => '$1$BKSmEyD5$G0kKNfkj50TUWIPhIZ7Ly1',
           comment    => 'Oracle BWP ADM ftp user',
     }

     user { "bwpdar":
           ensure     => "present",
           managehome => true,
           uid        => '5044',
           gid        => '5044',
           home       => '/opt/ftphome/bwpdadm/bwpdar',
           password   => '$1$oEK10NHt$79A4OYQZ7GalbNOn5/K8H1',
           comment    => 'Oracle BWP ADM ftp user',
     }

     user { "bwpdce":
           ensure     => "present",
           managehome => true,
           uid        => '5045',
           gid        => '5045',
           home       => '/opt/ftphome/bwpdadm/bwpdce',
           password   => '$1$gYwxcE49$Y0dJGZZ/1MvvnXyoATJmK.',
           comment    => 'Oracle BWP ADM ftp user',
     }

     user { "bwpdec":
           ensure     => "present",
           managehome => true,
           uid        => '5046',
           gid        => '5046',
           home       => '/opt/ftphome/bwpdadm/bwpdec',
           password   => '$1$Vuyn7pEm$2Epf2FYhXC8CifnYBbY8m/',
           comment    => 'Oracle BWP ADM ftp user',
     }

     user { "bwpdgl":
           ensure     => "present",
           managehome => true,
           uid        => '5047',
           gid        => '5047',
           home       => '/opt/ftphome/bwpdadm/bwpdgl',
           password   => '$1$1RSSE3zo$NLuNV/m2vbQlYe2BfRndG.',
           comment    => 'Oracle BWP ADM ftp user',
     }

     user { "bwpdhr":
           ensure     => "present",
           managehome => true,
           uid        => '5048',
           gid        => '5048',
           home       => '/opt/ftphome/bwpdadm/bwpdhr',
           password   => '$1$UAbYmHtN$q87G/99dMMGWev5Gt5.9f/',
           comment    => 'Oracle BWP ADM ftp user',
     }

     user { "bwpdinv":
           ensure     => "present",
           managehome => true,
           uid        => '5049',
           gid        => '5049',
           home       => '/opt/ftphome/bwpdadm/bwpdinv',
           password   => '$1$E1Pbv2au$0Wr4QWB06RKlswFqiG6zu/',
           comment    => 'Oracle BWP ADM ftp user',
     }

     user { "bwpdpo":
           ensure     => "present",
           managehome => true,
           uid        => '5050',
           gid        => '5050',
           home       => '/opt/ftphome/bwpdadm/bwpdpo',
           password   => '$1$CC1rlZUx$DqvjH12iLTDXK2bqFFxio1',
           comment    => 'Oracle BWP ADM ftp user',
     }

}
