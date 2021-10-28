class a2ps::install {

file { "/mnt/a2ps-4.13-2.aix4.3.ppc.rpm":
  require  => File [ "/mnt/a2ps-4.13-2.aix4.3.ppc.rpm" ],
  }

exec { "a2ps install":
  command  => "rpm -ivh /mnt/a2ps-4.13-2.aix4.3.ppc.rpm",
  creates  => "/usr/bin/a2ps",
  path     => "/usr/bin",
 }

}

