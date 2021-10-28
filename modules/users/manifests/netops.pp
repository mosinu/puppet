class users::netops {

######################
# Application Groups
######################

     group { "netops":
             ensure => present,
             gid => 5010
     }


######################
# Application Accounts
######################

######################
# User Accounts
######################

     user { "u44179":
           ensure     => "present",
           managehome => true,
           uid        => '44179',
           gid        => '5010',
           home       => '/home/NAS/u44179',
           password   => '$1$MpbZJmyE$czJw9bNCBHEJeuLsbcKKA0',
           comment    => 'Lorenzo Brooks, Network Operations',
     }

}
