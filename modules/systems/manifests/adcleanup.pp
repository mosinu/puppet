class systems::adcleanup {
  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

        file { "/etc/cron.hourly/adcleanup.sh":
           ensure => present,
           source => "puppet://$puppetserver/modules/${module_name}/adcleanup.sh",
           group   => "root",
           owner => "root",
           mode  => "0755"
        }

}
