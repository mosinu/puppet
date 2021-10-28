class sudoer::root_ken {

  file { "/etc/sudoers.d/root_ken":
       ensure => present,
       content => template("${module_name}/root_ken.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

