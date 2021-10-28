class ftp::canadm {

        file { [
                "/opt/ftphome/canadm",
               ]:
           ensure => "directory",
           owner  => "canadm",
           group  => "canadm",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/canadm/canap",
               ]:
           ensure => "directory",
           owner  => "canap",
           group  => "canap",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/canadm/canar",
               ]:
           ensure => "directory",
           owner  => "canar",
           group  => "canar",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/canadm/canben",
               ]:
           ensure => "directory",
           owner  => "canben",
           group  => "canben",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/canadm/canec",
               ]:
           ensure => "directory",
           owner  => "canec",
           group  => "canec",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/canadm/canhr",
               ]:
           ensure => "directory",
           owner  => "canhr",
           group  => "canhr",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/canadm/caninv",
               ]:
           ensure => "directory",
           owner  => "caninv",
           group  => "caninv",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/canadm/canpay",
               ]:
           ensure => "directory",
           owner  => "canpay",
           group  => "canpay",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/canadm/canpo",
               ]:
           ensure => "directory",
           owner  => "canpo",
           group  => "canpo",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/canadm/cangl",
               ]:
           ensure => "directory",
           owner  => "cangl",
           group  => "cangl",
           mode   => 775,
        }

}
