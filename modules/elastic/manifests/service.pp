class elastic::service {

        service { 'elasticsearch':
                name      => "elasticsearch",
                ensure    => running,
                enable    => true,
                hasrestart => true,
                subscribe => File['elasticsearch.yml'],
        }

}
