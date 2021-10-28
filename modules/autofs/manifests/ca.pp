class autofs::ca {

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/etc/auto.ca":
       ensure => present,
       content => template("autofs/auto.ca.erb"),
       require => Class["autofs::install"],
       notify => Class["autofs::service"],
       backup => ".orig",
  }

}

