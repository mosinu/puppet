class sudoer::ediradm {

  file { "/etc/sudoers.d/ediradm":
       ensure => present,
       content => template("${module_name}/ediradm.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

