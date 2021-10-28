import "classes/*"
import "nodes"
import "templates"

$puppetserver = 'ral-puppet01.gpi.com'

filebucket { main: server => puppet }
 
node default {
}

Package {
    provider => $operatingsystem ? {
        centos => yum,
        RedHat => yum,
        fedora => yum,
        OpenSuSE => zypper,
        SLES => zypper,
    }
}

notify { "env": message => "ENVIRONMENT=DMZ" }

file { "/tmp/facts.yaml":
    content => inline_template("<%= scope.to_hash.reject { |k,v| !( k.is_a?(String) && v.is_a?(String) ) }.to_yaml %>"),
}
