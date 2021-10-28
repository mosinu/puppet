class sudoer::entmon {

  file { "/etc/sudoers.d/entmon":
       ensure => present,
       content => template("${module_name}/entmon.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

