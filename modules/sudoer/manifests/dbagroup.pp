class sudoer::dbagroup {

  file { "/etc/sudoers.d/dbagroup":
       ensure => present,
       content => template("${module_name}/dbagroup.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

