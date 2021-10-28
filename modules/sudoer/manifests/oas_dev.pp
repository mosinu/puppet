class sudoer::oas_dev {

  file { "/etc/sudoers.d/oas_dev":
       ensure => present,
       content => template("${module_name}/oas_dev.erb"),
       backup => ".orig",
       group   => "root",
       owner => "root",
       mode => 0440,
       }

}
