class sudoer::special {

  file { "/etc/sudoers.d/special":
       ensure => present,
       content => template("${module_name}/special.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }
}

