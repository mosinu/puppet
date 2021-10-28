class users::wilyadm {

######################
# Application Groups
######################

     group { "wilyadm":
             ensure => present,
             gid => 5005
     }

######################
# Application Accounts
######################

     user { "wilyadm":
           ensure     => "present",
           managehome => true,
           uid        => '5005',
           gid        => '5005',
           home       => '/home/wilyadm',
           password   => '!!',
           comment    => 'Wily Introscope Application Account',
     }

}
