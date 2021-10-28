class users::mysql {

######################
# Application Groups
######################

     group { "mysql":
             ensure => present,
             gid => 27
     }


######################
# Application Accounts
######################

     user { "mysql":
           ensure     => "present",
           managehome => true,
           uid        => '27',
           gid        => '27',
           home       => '/opt/mysql',
           password   => '!!',
           comment    => 'MySQL Server',
     }

}

