class systems::bashrc {
  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

        file { "/etc/bashrc":
           ensure => present,
           source => "puppet://$puppetserver/modules/${module_name}/bashrc",
           group   => "root",
           owner => "root",
           mode  => "0644"
        }

}
