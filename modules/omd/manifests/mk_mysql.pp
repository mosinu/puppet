class omd::mk_mysql {

        file { "/etc/check_mk/mysql.cfg":
           ensure => "present",
           source => "puppet:///modules/${module_name}/mysql.cfg",
           owner  => "root",
           group  => "root",
           mode   => 0400,
        }

        file { "/usr/lib/check_mk_agent/plugins/mk_mysql":
           ensure => "present",
           source => "puppet:///modules/${module_name}/mk_mysql",
           owner  => "root",
           group  => "root",
           mode   => 0700,
        }

        file { "/etc/check_mk/fileinfo.cfg":
           ensure => "present",
           source => "puppet:///modules/${module_name}/fileinfo.cfg",
           owner  => "root",
           group  => "root",
           mode   => 0700,
        }

}
