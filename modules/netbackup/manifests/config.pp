class netbackup::config {

        #'qa','dev','dr': {
               #$nb1 = [ 
                                    #"cle-sunbackup",
                                    #"gpinom",
                                    #"ral-nbops01",
                                    #]

        #}


    case $environment {
        'prod','qa','dev','dr': {
               $nb1 = [ 
                                    "sunbackup",
                                    "ral-netbackup02",
                                    "gpinom",
                                    "nbmedia1",
                                    "nbmedia2",
                                    "nbmedia3",
                                    "nbmedia4",
                                    "admin1",
                                    "ral-nbops01",
                                    ]
        }
        'perf': {
               $nb1 = [
                                    "cle-sunbackup",
                                    "gpinom",
                                    "ral-nbops01",
                                    ]

        }
    }

#        file { '/usr/openv':
#           ensure => 'link',
#           target => '/opt/openv',
#        }

	if $somethingstrange == undef {
	        $netbackup_servers = $nb1
	}
	else {
		$netbackup_servers = $somethingstrange
	}
        file { "/usr/openv/netbackup/bp.conf":
          ensure => present,
          content => template("${module_name}/bp.conf.erb"),
#          require => Class["netbackup::agent"],
#         notify => Class["netbackup::service"],
          backup => ".orig",
        }

}
