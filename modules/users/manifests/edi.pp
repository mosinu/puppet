class users::edi {

######################
# Application Groups
######################

     group { "gpibots":
             ensure => present,
             gid => 5017
     }


######################
# Application Accounts
######################

     user { "gpibots":
           ensure     => "present",
           managehome => true,
           uid        => '5017',
           gid        => '5017',
           home       => '/home/gpibots',
           password   => '!!',
           comment    => 'EDI BOT App user',
     }

}

