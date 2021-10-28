class clock_old {
   file { "/etc/sysconfig/clock":
      ensure => present,
      source => "puppet://$puppetserver/modules/time/clock",
      owner => "root",
      group => "root",
      mode => "0644"
   }
}


class ntp_old {
   file { "/etc/ntp.conf":
      ensure => present,
#      content => template("time/ntp.conf.erb"),
      source => [ 
		"puppet://$puppetserver/modules/time/ntp.$operatingsystem.$environment.conf",
		"puppet://$puppetserver/modules/time/ntp.conf",
		],
      group   => "root",
      owner => "root",
      mode  => "0644"
   }

   package { "ntp":
       ensure => installed
   }
   service { "ntpd":
       ensure => running,
   }

}

