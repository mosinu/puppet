class mysql::sysbench {

        package { [
                "sysbench",
                "postgresql-libs",
                  ]:
        ensure => present
        }

}
