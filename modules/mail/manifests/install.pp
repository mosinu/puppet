class mail::install {

   package { [ 
	"postfix" ,
	]: 
   ensure => present
   }

#/usr/libexec/postfix

}
