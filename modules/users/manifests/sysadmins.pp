class users::sysadmins {

######################
# Application Groups
######################

     group { "sysadmin":
             ensure => present,
             gid => 5050
     }

     group { "t10253":
             ensure => present,
             gid => 10253
     }

     group { "u32883":
             ensure => present,
             gid => 32883
     }

     group { "u57057":
             ensure => present,
             gid => 57057
     }

     group { "u71145":
             ensure => present,
             gid => 71145
     }

     group { "u93021":
             ensure => present,
             gid => 93021
     }

######################
# Application Accounts
######################

     user { "t10253":
           ensure     => "present",
           managehome => true,
           uid        => '10253',
           gid        => '10253',
           home       => '/home/NAS/t10253',
           password   => '$6$0b0aWry7LgWEHMPg$O7bPNeMURDz4/nMqRdooIbNN658Ys1RXzmRRULCIU3ewdZ4XSaRDRkxyPnu4s.Wr2vwpEmMtDUmsRQXJLPKPK1',
           comment    => 'Will Harris',
     }

     user { "u32883":
           ensure     => "present",
           managehome => true,
           uid        => '32883',
           gid        => '32883',
           home       => '/home/NAS/u32883',
           password   => 'aqExkcWTa9mvM',
           comment    => 'Joe OConnor',
     }

     user { "u57057":
           ensure     => "present",
           managehome => true,
           uid        => '57057',
           gid        => '57057',
           home       => '/home/NAS/u57057',
           password   => 'HZd7PvssbchU',
           comment    => 'Darry Perry',
     }

     user { "u71145":
           ensure     => "present",
           managehome => true,
           uid        => '71145',
           gid        => '71145',
           home       => '/home/NAS/u71145',
           password   => '$1$h5ssT86b$CDWraHe1Wojwx9x.lFI.m/',
           comment    => 'Craig Cook',
     }

     user { "u93021":
           ensure     => "present",
           managehome => true,
           uid        => '93021',
           gid        => '93021',
           home       => '/home/NAS/u93021',
           password   => '$1$D3I2kAA0$9CWY6yIQKFHRz1qC44l0F.',
           comment    => 'Lynn Barbee',
     }


######################
# Delete Accounts
######################

     user { "u57680":
           ensure     => "absent",
           managehome => true,
           uid        => '57680',
           gid        => '57680',
           home       => '/home/NAS/u57680',
           password   => '!!',
           comment    => 'Moore Blount',
     }

     user { "u83404":
           ensure     => "absent",
           managehome => true,
           uid        => '83404',
           gid        => '83404',
           home       => '/home/NAS/u83404',
           password   => '!!',
           comment    => 'Todd McDonald',
     }

     user { "u52646":
           ensure     => "absent",
           managehome => true,
           uid        => '52646',
           gid        => '52646',
           home       => '/home/NAS/u52646',
           password   => '!!',
           comment    => 'Stuart Krivis',
     }

}
