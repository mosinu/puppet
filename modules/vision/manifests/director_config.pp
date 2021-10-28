class vision::director_config {


       file { "/etc/tomcat5/tomcat5.conf":
         ensure => present,
	 owner => "tomcat5",
	 group => "visiond",
         content => template("vision/tomcat5.conf.erb"),
         mode => 0664,
         backup => ".orig",
       }
}
