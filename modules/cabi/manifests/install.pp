class cabi::install {

        file { "/etc/init.d/BobjEnterprise120":
              ensure => present,
              source => "puppet:///modules/${module_name}/BobjEnterprise120",
              group   => "cabiadm",
              owner => "root",
              mode  => "0700"
        }

# Can't do this, these dirs become read only and cause errors when they are mounted
#        file { [
#                "/opt/iso",
#                "/opt/NAS",
#               ]:
#           ensure => "directory",
#           owner  => "root",
#           group  => "root",
#           mode   => 755,
#        }
}
