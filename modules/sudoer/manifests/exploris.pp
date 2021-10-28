class sudoer::exploris {

  file { "/etc/sudoers.d/exploris":
       ensure => present,
       content => template("${module_name}/exploris.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

