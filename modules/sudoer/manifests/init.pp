#
class sudoer {
  include sudoer::install 

       file { "/tmp/facts.yaml":
               content => inline_template("<%= scope.to_hash.reject { |k,v| !( k.is_a?(String) && v.is_a?(String) ) }.to_yaml %>"),
       }

}

