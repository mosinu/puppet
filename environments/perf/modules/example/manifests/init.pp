class example {
  $host_to_cert = hostname_to_crt($domain)
  $host_template = template("example/example.erb")

  notice("hostname_to_crt module returned: [$host_to_cert]")
  info("example.erb looks like:\n$example_template")
}
