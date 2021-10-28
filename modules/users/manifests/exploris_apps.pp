class users::exploris_apps {

######################
# Application Groups
######################

#     group { "expadmin":
#             ensure => present,
#             gid => 5009
#     }

#     group { "expsupp":
#             ensure => present,
#             gid => 5014
#     }

######################
# Application Accounts
######################

     user { "custom":
           ensure     => "present",
           managehome => true,
           uid        => '6004',
           gid        => '5009',
           home       => '/opt/export/home/custom',
           password   => '!!',
           comment    => 'GPI Custom, Exploris',
           groups     => ["expadmin"],
     }

     user { "ftpuser":
           ensure     => "present",
           managehome => true,
           uid        => '4000',
           gid        => '5009',
           home       => '/opt/export/home/ftpuser',
           password   => '$1$45tfHMSY$mAWghE1dmGvzInlEkYLoe/',
           comment    => 'FTP User, Exploris',
           groups     => ["expadmin"],
     }

     user { "scpuser":
           ensure     => "present",
           managehome => true,
           uid        => '4001',
           gid        => '5009',
           home       => '/opt/export/home/scpuser',
           password   => '!!',
           comment    => 'Secure Copy Transfer, Exploris',
           groups     => ["expadmin"],
     }

}
