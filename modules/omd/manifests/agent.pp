class omd::agent {

   package { [ 
        "check_mk-agent",
	]: 
   ensure => present
   }

#   package { [
#              "util-linux-ng",
#             ]:
#   ensure          => latest
#   }

}
