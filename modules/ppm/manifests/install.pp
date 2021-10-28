class ppm::install {

        package { [
                        "java-1.6.0-openjdk",
                        "tzdata-java",
			"oracle-instantclient-basic",
			"glibc-devel",

                  ]:
        ensure => present
        }

}
