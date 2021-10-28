class nfs::install {

   package { [ 
	"nfs-utils" ,
	]: 
   ensure => present
   }

}
