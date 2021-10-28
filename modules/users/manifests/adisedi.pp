class users::adisedi {

     group { "adisedi":
             ensure => present,
             gid => 5052
     }

# Yes, this is supposed to be ediftp dir.  Adisedi user reads and writes to this dir
#           home       => '/opt/ftphome/ediftp',

     user { "adisedi":
           ensure     => "present",
           managehome => true,
           uid        => '5052',
           gid        => '5052',
           home       => '/opt/ftphome/ediftp',
           password   => '$1$EyT40WVe$czFH81cJ8tUWPsdyWf/wH/',
           comment    => 'ADIS EDI ftp user',
           groups     => ["wasadmin"],
     }

}
