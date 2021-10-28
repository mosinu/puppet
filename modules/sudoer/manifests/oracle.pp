class sudoer::oracle {

  file { "/etc/sudoers.d/oracle":
       ensure => present,
       content => template("${module_name}/oracle.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }
}

