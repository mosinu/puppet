class sudoer::wasadmin {

  file { "/etc/sudoers.d/wasadmin":
       ensure => present,
       content => template("${module_name}/wasadmin.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

