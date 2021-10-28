class sudoer::oaa {

  file { "/etc/sudoers.d/oaa":
       ensure => present,
       content => template("${module_name}/oaa.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}
