class sudoer::omd {

  file { "/etc/sudoers.d/omd":
       ensure => present,
       content => template("${module_name}/omd.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}
