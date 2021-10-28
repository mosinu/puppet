class sudoer::spm {


  file { "/etc/sudoers.d/spm":
       ensure => present,
       content => template("${module_name}/spm.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}

