class sudoer::steel_belted_radius {

  file { "/etc/sudoers.d/steel_belted_radius":
       ensure => present,
       content => template("${module_name}/steel_belted_radius.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }
}
