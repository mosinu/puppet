class autofs::home_ral {

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/etc/auto.home":
       ensure => present,
       content => template("autofs/auto.home.ral.erb"),
       require => Class["autofs::install"],
       notify => Class["autofs::service"],
       backup => ".orig",
  }


}
