class autofs::nas_cle {

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/etc/auto.nas":
       ensure => present,
       content => template("autofs/auto.nas.cle.erb"),
       require => Class["autofs::install"],
       notify => Class["autofs::service"],
       backup => ".orig",
  }



}
