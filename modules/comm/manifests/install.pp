class comm::install {

   package { [
                "vsftpd",
             ]:
   ensure => latest
   }
}

