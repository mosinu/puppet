class users::visiondusers {

######################
# Application Groups
######################

     group { "visiond":
             ensure => present,
             gid => 5016
     }


######################
# Application Accounts
######################

     user { "visiond":
           ensure     => "present",
           managehome => true,
           uid        => '5016',
           gid        => '5016',
           home       => '/home/visiond',
           password   => '$1$NFxCuv9m$UaG6AdhdOiIXBgrITLXcT0',
           comment    => 'Vision Direct Application Account',
     }

}
