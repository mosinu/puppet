class ftp::ftphome {

        file { [
                "/opt/ftphome",
               ]:
           ensure => "directory",
           owner  => "root",
           group  => "root",
           mode   => 755,
        }

}
