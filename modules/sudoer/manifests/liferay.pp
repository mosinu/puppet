class sudoer::liferay {

  file { "/etc/sudoers.d/liferay":
       ensure => present,
       content => template("${module_name}/liferay.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

