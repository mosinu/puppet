class resolver {
    # Here you can add stuff to be inhereted by your resolver classes
    # We won't bother for this demonstration, but just for show!
}
 
class resolver::resolv inherits resolver { 
          file { "/etc/resolv.conf": 
              ensure => present,
              source => "puppet:///modules/resolver/resolv.conf",
              group   => "root",
              owner => "root",
              mode  => "0644"
          }
}
