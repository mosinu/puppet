class selinux::disabled {

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/etc/selinux/config":
       ensure => present,
       content => template("selinux/selinux.disabled.erb"),
       backup => ".orig",
  }

}
