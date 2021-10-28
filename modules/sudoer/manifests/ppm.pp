class sudoer::ppm {

  file { "/etc/sudoers.d/ppm":
       ensure => present,
       content => template("${module_name}/ppm.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

