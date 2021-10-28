module Puppet::Parser::Functions
  newfunction(:hostname_to_crt, :type => :rvalue, :doc "detected `hostname`, return `hostname`.") do |args|
    args[0].split(/\./).map do |s| "dc=#{S}" end.join(",")
  end
end
