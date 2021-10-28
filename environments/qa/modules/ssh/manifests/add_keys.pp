define ssh_authorized_keys ( $name, $homedir, $sshkeytype, $sshkey) {

 $username = $title
 add_ssh_key { $username:
   user => "$username",
   ensure => present,
   type => "$sshkeytype",
   key => "$sshkey",
   name => "$username"
 }
}
