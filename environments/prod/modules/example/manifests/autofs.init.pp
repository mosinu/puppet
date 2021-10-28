# manage autofs configuration                                                                                                         

define autofs_master($mounts) {                                                                                                       

    package { autofs:                                                                                                                 
	ensure => running,
	hasstatus => true,
	hasrestart => true,
	enable => true,

    }                                                                                                                                 

    file { "/etc/auto.master":                                                                                                        
        owner => root,                                                                                                                
        group => root,                                                                                                                
        mode => 644,                                                                                                                  
        content => template("services/autofs/auto.master.tpl"),                                                                       
        notify => Service[autofs],                                                                                                    
    }                                                                                                                                 

    service { autofs:                                                                                                                 
        ensure => true,                                                                                                               
        pattern => "automount",                                                                                                       
        require => Package[autofs],                                                                                                   
    }                                                                                                                                 
}                                                                                                                                     

define autofs_mount() {                                                                                                               

    file { "/etc/auto.$name":                                                                                                         
        ensure => file,                                                                                                               
        owner => root,                                                                                                                
        group => root,                                                                                                                
        mode => 644,                                                                                                                  
        content => template("services/autofs/auto.mount.tpl"),                                                                        
        notify => Service[autofs],                                                                                                    
    }                                                                                                                                 

}                                                                                                                                     

class autofs_home {                                                                                                                    

    $mounts = [ "home" ]                                                                                                              
    autofs_master { "master": mounts => $mounts }                                                                                     
    autofs_mount { $mounts: }                                                                                                         
}  

#class autofs_bar {                                                                                                                    
#
#    $mounts = [ "data" "db" ]                                                                                                              
#    autofs_master { "master": mounts => $mounts }                                                                                     
#    autofs_mount { $mounts: }                                                                                                         
#}  
