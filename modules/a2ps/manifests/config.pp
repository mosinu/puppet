# config.pp
class a2ps::config {

  file { '/opt/freeware/bin/a2ps':
   ensure => present,
   group  => 'sysadmin',
   owner  => 'root',
   mode   => '0755',
   }

  file { '/usr/bin/a2ps':
   ensure  => 'link',
   target  => '/opt/freeware/bin/a2ps',
  }

}
