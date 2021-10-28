class xgui::xvfb {

        file { "/etc/rc.d/init.d/xvfb":
              ensure => present,
              source => "puppet:///modules/${module_name}/xvfb",
              group   => "root",
              owner => "root",
              mode  => "0755",
	      notify => Exec['add_xvfb_init'],
	}

       file { [
                "/usr/lib/xserver/",
                ]:
           ensure =>            "directory",
           owner  =>            "root",
           group  =>            "root",
           mode   => 777,
        }

       file { [
                "/usr/lib/xserver/SecurityPolicy",
                ]:
           ensure =>            "directory",
           owner  =>            "root",
           group  =>            "root",
           mode   => 777,
        }

        file { "/usr/local/bin/xvfb.sh":
              ensure => present,
              source => "puppet:///modules/${module_name}/xvfb.sh",
              group   => "root",
              owner => "root",
              mode  => "0755"
        }

	service { 'xvfb':
	      name      => 'xvfb',
              ensure    => running,
              enable    => true,
              hasrestart => true,
	}

	exec {'add_xvfb_init':
	      command => '/sbin/chkconfig --add xvfb',
	      path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
	      onlyif    =>  "test `/sbin/chkconfig --list | /bin/grep xvfb | /usr/bin/wc -l` -eq 0",
	}

}
