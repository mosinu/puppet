class sudoer::aix_admins {

  file { "/etc/sudoers":
       ensure => present,
       content => template("${module_name}/aix_admins.erb"),
       backup => ".orig",
       group   => "system",
       owner => "root",
       mode => 0440,
       }
}

