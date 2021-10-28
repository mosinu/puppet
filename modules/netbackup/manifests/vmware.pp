class netbackup::vmware {

   package { [ 
	"SYMCquiesce" ,
	]: 
   ensure => present
   }

#   package { [ "netbackup" ]:
#       ensure => present
#   }

}
