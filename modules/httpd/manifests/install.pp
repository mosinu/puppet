class httpd::install {

   package { [
		"httpd",
		"mod_ssl",
             ]:
   ensure => latest
   }
}

