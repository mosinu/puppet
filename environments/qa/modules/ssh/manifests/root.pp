class ssh::root { 
   augeas { "sshd_config":
	context => "/files/etc/ssh/sshd_config",
	changes => [
		"set LogLevel INFO",
		"set PermitRootLogin no",
	],
	  	notify => Service["sshd"],
	}

	service { "sshd":
#		name => $operatingsystem ? {
#		Debian => "ssh",
#		RedHat => "sshd",
#		default => "sshd",
#		}
		require => Augeas["sshd_config"],
		enable => true,
		ensure => running,
	}
}
