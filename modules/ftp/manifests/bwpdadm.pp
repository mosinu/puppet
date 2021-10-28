class ftp::bwpdadm {

        file { [
                "/opt/ftphome/bwpdadm",
               ]:
           ensure => "directory",
           owner  => "bwpdadm",
           group  => "bwpdadm",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/bwpdadm/bwpdap",
               ]:
           ensure => "directory",
           owner  => "bwpdap",
           group  => "bwpdap",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/bwpdadm/bwpdar",
               ]:
           ensure => "directory",
           owner  => "bwpdar",
           group  => "bwpdar",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/bwpdadm/bwpdce",
               ]:
           ensure => "directory",
           owner  => "bwpdce",
           group  => "bwpdce",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/bwpdadm/bwpdec",
               ]:
           ensure => "directory",
           owner  => "bwpdec",
           group  => "bwpdec",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/bwpdadm/bwpdhr",
               ]:
           ensure => "directory",
           owner  => "bwpdhr",
           group  => "bwpdhr",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/bwpdadm/bwpdinv",
               ]:
           ensure => "directory",
           owner  => "bwpdinv",
           group  => "bwpdinv",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/bwpdadm/bwpdpo",
               ]:
           ensure => "directory",
           owner  => "bwpdpo",
           group  => "bwpdpo",
           mode   => 775,
        }

        file { [
                "/opt/ftphome/bwpdadm/bwpdgl",
               ]:
           ensure => "directory",
           owner  => "bwpdgl",
           group  => "bwpdgl",
           mode   => 775,
        }

}
