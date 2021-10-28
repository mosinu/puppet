import "classes/*"
import "nodes"
import "templates"

$puppetserver = 'ral-puppet01.gpi.com'

filebucket { main: server => puppet }
 
node default {
}

# Defaults
File { backup => main }
Exec { path => "/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/bin:/usr/local/sbin" }
stage { "pre": before => Stage[main] }

Package {
    provider => $operatingsystem ? {
        centos => yum,
        RedHat => yum,
        fedora => yum,
        OpenSuSE => zypper,
        SLES => zypper,
    }
}


notify { "env": message => "ENVIRONMENT=production" }
