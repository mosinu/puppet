class sudoer::vision {

  file { "/etc/sudoers.d/vision":
       ensure => present,
       content => template("${module_name}/vision.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

