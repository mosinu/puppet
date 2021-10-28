class users::ediftp {

     group { "ediftp":
             ensure => present,
             gid => 5053
     }

     user { "ediftp":
           ensure     => "present",
           managehome => true,
           uid        => '5053',
           gid        => '5053',
           home       => '/opt/ftphome/ediftp',
           password   => '$1$EyT40WVe$czFH81cJ8tUWPsdyWf/wH/',
           comment    => 'EDI ftp user',
           groups     => ["wasadmin"],
     }

}
