class sudoer::netops {

  file { "/etc/sudoers.d/netops":
       ensure => present,
       content => template("${module_name}/netops.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }
}
