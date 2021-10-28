class sudoer::spectrum {

  file { "/etc/sudoers.d/spectrum":
       ensure => present,
       content => template("${module_name}/spectrum.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

