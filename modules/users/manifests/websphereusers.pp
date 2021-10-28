class users::websphereusers {

######################
# Application Groups
######################

     group { "wasadmin":
             ensure => present,
             gid => 5021
     }


######################
# Application Accounts
######################

     user { "wasadmin":
           ensure     => "present",
           managehome => true,
           uid        => '5021',
           gid        => '5021',
           home       => '/home/wasadmin',
           password   => '!!!$1$NFxCuv9m$UaG6AdhdOiIXBgrITLXcT0',
           comment    => 'Websphere Application Account',
           groups     => ["ihsconf"],
     }

}
