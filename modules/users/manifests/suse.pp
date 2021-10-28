class users::suse {

######################
# Application Groups
######################

     group { "postdrop":
             ensure => present,
             gid => 90
     }

######################
# Application Accounts
######################

}

