class comm::config {

        file { "/etc/vsftpd/vsftpd.conf":
          ensure => present,
          content => template("${module_name}/vsftpd.conf.erb"),
          mode => 0644,
          notify => Class["comm::service"],
          backup => ".orig",
        }

}
