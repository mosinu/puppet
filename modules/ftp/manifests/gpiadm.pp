class ftp::gpiadm {

        file { [
                "/opt/ftphome/gpiadm",
               ]:
           ensure => "directory",
           owner  => "gpiadm",
           group  => "gpiadm",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/gpiadm/gpiap",
               ]:
           ensure => "directory",
           owner  => "gpiap",
           group  => "gpiap",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/gpiadm/gpiar",
               ]:
           ensure => "directory",
           owner  => "gpiar",
           group  => "gpiar",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/gpiadm/gpiben",
               ]:
           ensure => "directory",
           owner  => "gpiben",
           group  => "gpiben",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/gpiadm/gpiec",
               ]:
           ensure => "directory",
           owner  => "gpiec",
           group  => "gpiec",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/gpiadm/gpihr",
               ]:
           ensure => "directory",
           owner  => "gpihr",
           group  => "gpihr",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/gpiadm/gpiinv",
               ]:
           ensure => "directory",
           owner  => "gpiinv",
           group  => "gpiinv",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/gpiadm/gpipay",
               ]:
           ensure => "directory",
           owner  => "gpipay",
           group  => "gpipay",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/gpiadm/gpipo",
               ]:
           ensure => "directory",
           owner  => "gpipo",
           group  => "gpipo",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/gpiadm/gpigl",
               ]:
           ensure => "directory",
           owner  => "gpigl",
           group  => "gpigl",
           mode   => 775,
        }

}
