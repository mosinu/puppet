class mysql::innotop {

        package { [
                "innotop",
                  ]:
        ensure => present
        }

}
