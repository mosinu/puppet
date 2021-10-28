class sudoer::enterprise_architecture {

  file { "/etc/sudoers.d/enterprise_architecture":
       ensure => present,
       content => template("${module_name}/enterprise_architecture.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

