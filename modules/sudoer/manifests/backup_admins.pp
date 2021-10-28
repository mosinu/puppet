class sudoer::backup_admins {

  file { "/etc/sudoers.d/backup_admins":
       ensure => present,
       content => template("${module_name}/backup_admins.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }


}

