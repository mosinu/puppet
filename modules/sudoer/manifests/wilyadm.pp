class sudoer::wilyadm {

  file { "/etc/sudoers.d/wilyadm":
       ensure => present,
       content => template("${module_name}/wilyadm.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

