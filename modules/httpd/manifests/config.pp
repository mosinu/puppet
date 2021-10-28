class httpd::config {

        file { "/etc/httpd/conf/httpd.conf":
          ensure => present,
          content => template("${module_name}/httpd.conf.erb"),
          mode => 0644,
          #require => Class["httpd::install"],
          notify => Class["httpd::service"],
          backup => ".orig",
        }

}
