class users::visionusers {

######################
# Application Groups
######################

     group { "vision":
             ensure => present,
             gid => 5009
     }

     group { "axis":
             ensure => present,
             gid => 5010
     }

######################
# Application Accounts
######################

     user { "vision":
           ensure     => "present",
           managehome => true,
           uid        => '5009',
           gid        => '5009',
           home       => '/home/vision',
           password   => '$1$OcJDu1TZ$uMw3hEe.Q.Q7e7B/FIOT61',
           comment    => 'Vision Application Account',
     }

     user { "axis":
           ensure     => "present",
           managehome => true,
           uid        => '5010',
           gid        => '5010',
           home       => '/home/axis',
           password   => '$1$OcJDu1TZ$uMw3hEe.Q.Q7e7B/FIOT61',
           comment    => 'Vision Test System Supplier Emulator',
     }

}

