require 'resolv'
require 'socket'
require 'Resolv::DNS'

hostclass :hosts do
  notice [scope.lookupvar('interfaces').split(",").each do |interface|] <%= scope.lookupvar( 'fqdn' ) %> <%= scope.lookupvar('hostname') %>
#<%= scope.lookupvar('ipaddress_'+interface) %> fqdn = inline_template("<%_erbout.contact(Resolv::DNS.open.getname( 'ipaddress_' ).to_s) %>")
end 

