class users::oaa {

######################
# Application Groups
######################

     group { "oaa":
             ensure => present,
             gid => 5001
     }

     group { "oas":
             ensure => present,
             gid => 5008
     }

######################
# Application Accounts
######################

     user { "oaa":
           ensure     => "present",
           managehome => true,
           uid        => '5001',
           gid        => '5001',
           home       => '/home/applmgr',
           password   => '!!',
           comment    => 'Oracle Application Account',
           groups     => ["oaa", "oas"],
     }

}

