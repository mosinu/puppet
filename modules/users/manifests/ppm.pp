class users::ppm {

######################
# Application Groups
######################

     group { "mitg":
             ensure => present,
             gid => 5015
     }


######################
# Application Accounts
######################

     user { "mitg":
           ensure     => "present",
           managehome => true,
           uid        => '5015',
           gid        => '5015',
           home       => '/opt/mitg',
           password   => '!!',
           comment    => 'PPM Application Account',
     }

}

