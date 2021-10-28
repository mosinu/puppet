class ftp::adisedi {

        file { [
                "/opt/ftphome/ediftp",
               ]:
           ensure => "directory",
           owner  => "ediftp",
           group  => "ediftp",
           # recurse => true, ## Do not recuse down, these files should be owned by wasadmin:wasadmin
           mode   => 755,
        }

        file { [
                "/opt/ftphome/ediftp/archive",
               ]:
           ensure => "directory",
           owner  => "wasadmin",
           group  => "wasadmin",
#           recurse => true, 
           mode   => 740,
        }

        file { [
                "/opt/ftphome/ediftp/CPInvoice",
                "/opt/ftphome/ediftp/OutboundOrders",
                "/opt/ftphome/ediftp/OutboundOrdersBWP",
               ]:
           ensure => "directory",
           owner  => "adisedi",
           group  => "wasadmin",
           # recurse => true,
           mode   => 770,
        }

        file { [
                "/opt/ftphome/ediftp/InboundStaging",
                "/opt/ftphome/ediftp/OutboundXMLInvoice",
               ]:
           ensure => "directory",
           owner  => "ediftp",
           group  => "wasadmin",
#           recurse => true,
           mode   => 770,
        }

}
