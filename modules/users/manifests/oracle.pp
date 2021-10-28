class users::oracle {

######################
# Application Groups
######################

     group { "dba":
             ensure => present,
             gid => 5000
     }


######################
# Application Accounts
######################

     user { "oracle":
           ensure     => "present",
           managehome => true,
           uid        => '5000',
           gid        => '5000',
           home       => '/home/oracle',
           password   => '!!',
           comment    => 'Oracle Software Owner',
     }

}

