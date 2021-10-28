class sudoer::mysql_dba {

  file { "/etc/sudoers.d/mysql_dba":
       ensure => present,
       content => template("${module_name}/mysql_dba.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

