class autofs::config {

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/etc/auto.master":
       ensure => present,
       content => template("autofs/auto.master.erb"),
       require => Class["autofs::install"],
       notify => Class["autofs::service"],
       backup => ".orig",
  }

#  file { "/etc/auto.home":
#       ensure => present,
#       content => template("autofs/auto.home.erb"),
#       require => Class["autofs::install"],
#       notify => Class["autofs::service"],
#       backup => ".orig",
#  }


}

