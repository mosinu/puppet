class logstash::service {

        service { 'logstash':
                name      => "logstash",
                ensure    => running,
                enable    => true,
                hasrestart => true,
                subscribe => File['logstash.conf'],
        }

}
