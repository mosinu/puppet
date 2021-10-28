class sudoer::mysql_user {

  file { "/etc/sudoers.d/mysql":
       ensure => present,
       content => template("${module_name}/mysql_user.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }
}
