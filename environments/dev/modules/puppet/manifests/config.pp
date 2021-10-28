class puppet::config {
  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/etc/puppet/puppet.conf":
       ensure => present,
       content => template("puppet/puppet.conf.erb"),
       require => Class["puppet::install"],
       notify => Class["puppet::service"],
       backup => ".orig",
  }
}

