class ldap::config {
  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

#  file { "/etc/ldap.conf":
#       ensure => present,
#       source => "puppet:///modules/ldap/ldap.conf",
#       require => Class["ldap::install"],
#       notify => Class["ldap::service"],
#       backup => ".orig",
#  }

  file { "/etc/ldap.conf":
       ensure => present,
       content => template("ldap/ldap.conf.erb"),
       require => Class["ldap::install"],
       notify => Class["ldap::service"],
#       backup => ".orig",
  }
}
