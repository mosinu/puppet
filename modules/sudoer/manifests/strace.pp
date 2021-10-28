class sudoer::strace {

  file { "/etc/sudoers.d/strace":
       ensure => present,
       content => template("${module_name}/strace.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}
