class users::wasadmin {

######################
# Application Groups
######################

     group { "wasadmin":
             ensure => present,
             gid => 5021
     }

# This is defined in the ihsconf user class
#     group { "ihsconf":
#             ensure => present,
#             gid => 5022
#     }

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
