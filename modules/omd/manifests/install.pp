class omd::install {

   package { [ 
        "omd-1.00",
	]: 
   ensure => present
   }

   package { [
              "util-linux-ng",
             ]:
   ensure          => latest
   }

}
