class autofs::oraclepatches {

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/etc/auto.ora_patches":
       ensure => present,
       content => template("autofs/auto.ora_patches.erb"),
       require => Class["autofs::install"],
       notify => Class["autofs::service"],
       backup => ".orig",
  }

}

