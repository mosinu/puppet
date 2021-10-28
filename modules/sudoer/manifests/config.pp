class sudo::config {
  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/etc/auto.master":
       ensure => present,
       content => template("sudo/auto.master.erb"),
       require => Class["sudo::install"],
       notify => Class["sudo::service"],
       backup => ".orig",
  }

  file { "/etc/auto.home":
       ensure => present,
       content => template("sudo/auto.home.erb"),
       require => Class["sudo::install"],
       notify => Class["sudo::service"],
       backup => ".orig",
  }


}

