class sudoer::edi {

  file { "/etc/sudoers.d/edi":
       ensure => present,
       content => template("${module_name}/edi.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

