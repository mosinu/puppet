class elastic::config {

        file { [
                "/opt/elasticsearch/",
                "/opt/elasticsearch/logs",
                "/opt/elasticsearch/data",
                "/opt/elasticsearch/work",
                ]:
                ensure => "directory",
                owner  => "elasticsearch",
                group  => "elasticsearch",
        }

        file { "elasticsearch.yml":
                ensure => present,
                path => "/etc/elasticsearch/elasticsearch.yml",
                source => "puppet:///modules/${module_name}/elasticsearch.yml",
                group => "elasticsearch",
                owner => "elasticsearch",
                mode  => "0644",
        }

}
