class mysql::percona-toolkit {

        package { [
                "percona-toolkit",
                  ]:
        ensure => present
        }

}
