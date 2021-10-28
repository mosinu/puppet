import "classes/*"
import "nodes"
import "templates"

$puppetserver = 'dev-puppet01.gpi.com'

filebucket { main: server => puppet }
 
# Defaults
File { backup => main }
Exec { path => "/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/bin:/usr/local/sbin" }

#stage { "pre": before => Stage[main] }

Package {
    provider => $operatingsystem ? {
        centos => yum,
        RedHat => yum,
        fedora => yum,
        OpenSuSE => zypper,
        SLES => zypper,
        AIX => geninstall,
    }
}


node default {
}

notify { "env": message => "ENVIRONMENT=testing" }
notify { "debug": message => "DEBUG" }
