class radius::install {

   package { "freeradius2":
       ensure => installed
   }

#   file { "/opt/JNPRsbr/radius/ldapauthtest.aut":
#      ensure => present,
#      source => "puppet://$puppetserver/modules/${module_name}/ldapauthtest.aut",
#      owner => "root",
#      group => "root",
#      mode => "0644"
#   }

}

