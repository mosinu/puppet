class sudoer::root_noah {

  file { "/etc/sudoers.d/root_noah":
       ensure => present,
       content => template("${module_name}/root_noah.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

