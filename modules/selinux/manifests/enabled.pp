class selinux::enabled {

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/etc/selinux/config":
       ensure => present,
       content => template("selinux/selinux.enabled.erb"),
       backup => ".orig",
  }

}
