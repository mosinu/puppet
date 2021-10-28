#
class test {
  File {
     owner => "root",
     group => "root",
     mode => "0744",
  }

file { "/tmp/hello":
    ensure => present,
    source => "puppet://$puppetserver/modules/test/hello",
    owner  => "puppet",
    group  => "puppet",
    mode   => 0777,
  }

exec { "hello":
   command => "/usr/bin/touch /tmp/hello",
   path    => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ],
   refreshonly => true,
 }

exec { "mount":
  command => "/usr/sbin/mount nerf:/export/mksysb/dump /mnt",
  onlyif  => [
               "/opt/puppet/bin/ruby /home/u110842/check.rb",
             ]
 }

}
