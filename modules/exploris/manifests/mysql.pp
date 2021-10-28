class exploris::mysql {

        package { [
                "mysql-server",
                  ]:
        ensure => present
        }

       service { "mysqld":
          ensure => running,
          enable => true,
         hasstatus => true,
         hasrestart => true,
       }

        file { [
                "/opt/mysql",
		"/opt/mysql/tmp",
               ]:
           ensure => "directory",
           owner  => "mysql",
           group  => "mysql",
           mode   => 0775,
        }

       file { "/etc/my.cnf":
              ensure => present,
              group  => "mysql",
              owner  => "mysql",
              mode   => "0664"
       }



}
