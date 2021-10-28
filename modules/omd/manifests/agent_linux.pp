class omd::agent_linux {

        file { "/usr/bin/check_mk_agent":
           ensure => "present",
           source => "puppet:///modules/${module_name}/check_mk_agent.linux",
           owner  => "root",
           group  => "root",
           mode   => 0744,
        }

   #package { [ 
        #"check_mk-agent",
	#]: 
   #ensure => present
   #}

#   package { [
#              "util-linux-ng",
#             ]:
#   ensure          => latest
#   }

}
