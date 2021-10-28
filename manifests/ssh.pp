class ssh {
package { ssh: ensure => installed }
file { sshd_config:
name => “/etc/ssh/sshd_config”,
owner=> root,
source => “puppet://server/apps/ssh/...”,
after => Package[ssh]
}
service { sshd:
ensure => running,
subscribe => [Package[ssh],
File[sshd_config]]
}
}

