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
	Scientific => yum,
        OpenSuSE => zypper,
        SLES => zypper,
        AIX => nim,
    }
}

notify { "env": message => "ENVIRONMENT=PRODUCTION" }

file { "/tmp/facts.yaml":
    content => inline_template("<%= scope.to_hash.reject { |k,v| !( k.is_a?(String) && v.is_a?(String) ) }.to_yaml %>"),
}

