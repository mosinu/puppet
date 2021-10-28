class sudoer::install {
   package { [ "sudo" ]:
       ensure => present
   }

  file { "/etc/sudoers":
       ensure => present,
       content => template("${module_name}/sudoers.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

  file { "/etc/sudoers.d/":
       ensure => "directory",
       owner  => "root",
       group  => "root",
       mode   => 0750,
       }


}
