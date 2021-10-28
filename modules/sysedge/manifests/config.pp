class sysedge::config {

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/opt/CA/SystemEDGE/config/sysedge.cf":
       ensure => present,
       content => template("sysedge/sysedge.cf.erb"),
       require => Class["sysedge::install"],
       notify => Class["sysedge::service"],
       backup => ".orig",
  }

}
