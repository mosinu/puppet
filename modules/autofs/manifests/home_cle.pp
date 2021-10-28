class autofs::home_cle {

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/etc/auto.home":
       ensure => present,
       content => template("autofs/auto.home.cle.erb"),
       require => Class["autofs::install"],
       notify => Class["autofs::service"],
       backup => ".orig",
  }


}
