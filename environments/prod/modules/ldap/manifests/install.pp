# Make sure that we have nscd, nss-ldap and openldap
class ldap::install {
   package { [ "nscd", "nss_ldap", "openldap" ]:
       ensure => present
   }
}
