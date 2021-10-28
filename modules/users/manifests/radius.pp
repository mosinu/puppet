class users::radius {

######################
# Application Groups
######################

     group { "radiusd":
             ensure => present,
             gid => 95
     }


######################
# Application Accounts
######################

     user { "radiusd":
           ensure     => "present",
           managehome => true,
           uid        => '95',
           gid        => '95',
           home       => '/home/radiusd',
           password   => '!!',
           comment    => 'Radiusd Application Account',
     }

}

