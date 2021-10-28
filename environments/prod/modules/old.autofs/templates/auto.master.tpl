<% mounts.each do |val| -%>
/<%= val %> /etc/auto.<%= val %> tcp,nodev,nosuid 
<% end -%>
