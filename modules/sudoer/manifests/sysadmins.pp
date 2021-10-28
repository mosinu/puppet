class sudoer::sysadmins {

  file { "/etc/sudoers.d/sysadmins":
       ensure => present,
       content => template("${module_name}/sysadmins.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }


}

