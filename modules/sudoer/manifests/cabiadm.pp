class sudoer::cabiadm {


  file { "/etc/sudoers.d/cabi":
       ensure => present,
       content => template("${module_name}/cabi.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

