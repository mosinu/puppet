class sudoer::eem {

  file { "/etc/sudoers.d/eem":
       ensure => present,
       content => template("${module_name}/eem.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

