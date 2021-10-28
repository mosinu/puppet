class sudoer::rimini_street {

  file { "/etc/sudoers.d/rimini_street":
       ensure => present,
       content => template("${module_name}/rimini_street.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}
