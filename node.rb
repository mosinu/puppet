#! /usr/bin/ruby
# a simple script which fetches external nodes from Foreman
# you can basically use anything that knows how to get http data, e.g. wget/curl
# etc.

# Foreman url
foreman_url="http://ral-foreman.gpi.com:3000" 

require 'net/http'
require 'net/https' if foreman_url =~ /^https/

foreman_url += "/node/#{ARGV[0]}?format=yml" 
url = URI.parse(foreman_url)
con = Net::HTTP.new(url.host, url.port)
#con.use_ssl = (url.scheme == 'https')
req = Net::HTTP::Get.new(foreman_url)
res = con.start { |http| http.request(req) }

case res
when Net::HTTPOK
  puts res.body
else
  $stderr.puts "Error retrieving node %s: %s" % [ARGV[0], res.class]
end
