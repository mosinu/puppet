class steel_belted_radius::install {

   package { "sbr-ent.i386":
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

