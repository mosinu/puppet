class sudoer::ehealth {

  file { "/etc/sudoers.d/ehealth":
       ensure => present,
       content => template("${module_name}/ehealth.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

