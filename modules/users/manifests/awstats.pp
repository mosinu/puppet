class users::awstats {

######################
# Application Groups
######################

     group { "awstats":
             ensure => present,
             gid => 7000
     }

######################
# Application Accounts
######################

     user { "awstats":
           ensure     => "present",
           managehome => true,
           uid        => '7000',
           gid        => '7000',
           home       => '/home/awstats',
           password   => '!!',
           comment    => 'Awstats App user',
     }

}
