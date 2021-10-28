class users::exploris_all {

######################
# Application Groups
######################

     group { "expadmin":
             ensure => present,
             gid => 5009
     }

     group { "expsupp":
             ensure => present,
             gid => 5014
     }

######################
# Application Accounts
######################

     user { "expadmin":
           ensure     => "present",
           managehome => true,
           uid        => '5009',
           gid        => '5009',
           home       => '/home/NAS/expadmin',
           password   => '!!',
           comment    => 'Exploris App User',
     }

     user { "expsupp":
           ensure     => "present",
           managehome => true,
           uid        => '5014',
           gid        => '5014',
           home       => '/home/NAS/expsupp',
           password   => '!!',
           comment    => 'Exploris Support User',
     }
}
