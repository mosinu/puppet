class users::ihsconf {

######################
# Application Groups
######################

     group { "ihsconf":
             ensure => present,
             gid => 5022
     }

######################
# Application Accounts
######################

     user { "ihsconf":
           ensure     => "present",
           managehome => true,
           uid        => '5022',
           gid        => '5022',
           home       => '/home/ihsconf',
           password   => '!!',
           comment    => 'IBM Http Server Application Account',
     }

}
