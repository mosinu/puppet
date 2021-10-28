class autofs::websphererepo {

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/etc/auto.nas":
       ensure => present,
       content => template("autofs/auto.websphererepo.erb"),
       require => Class["autofs::install"],
       notify => Class["autofs::service"],
       backup => ".orig",
  }

}

