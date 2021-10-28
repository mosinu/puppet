class edirectory::install {

  file { "/etc/yum.repos.d/carquest-edirectory.repo":
       ensure => present,
       content => template("${module_name}/carquest-edirectory.repo.erb"),
       backup => ".orig",
       }

   package { [
#		"nici-2.7.7-0.02.i586",
#		"nici64-2.7.7-0.02.x86_64",
#		"novell-edirectory-expat-8.8.8-1.x86_64",
#		"novell-edirectory-jclnt-8.8.8-1.x86_64",
#		"novell-edirectory-xdasinstrument-8.8.8-1.x86_64",
#		"novell-edirectory-xdaslog-8.8.8-1.x86_64",
#		"novell-edirectory-xdaslog-conf-8.8.8-1.noarch",
#		"novell-kerberos-base-1.5-52.1.x86_64",
#		"novell-kerberos-ldap-extensions-1.5-52.1.x86_64",
#		"novell-ncpenc-1.2.2.0-1.x86_64",
#		"novell-NDSbase-8.8.8-1.x86_64",
#		"novell-NDScommon-8.8.8-1.x86_64",
#		"novell-NDSimon-8.8.8-1.x86_64",
#		"novell-NDSmasv-8.8.8-1.x86_64",
#		"novell-NDSrepair-8.8.8-38.x86_64",
#		"novell-NDSserv-8.8.8-1.x86_64",
#		"novell-NLDAPbase-8.8.8-1.x86_64",
#		"novell-NLDAPsdk-8.8.8-1.x86_64",
#		"novell-nmas-8.8.8.0-20130821.x86_64",
#		"novell-NOVLembox-8.8.8-24.x86_64",
#		"novell-NOVLice-8.8.8-1.x86_64",
#		"novell-NOVLldif2dib-8.8.8-1.x86_64",
#		"novell-NOVLlmgnt-8.8.8-1.x86_64",
#		"novell-NOVLsnmp-8.8.8-1.x86_64",
#		"novell-NOVLsubag-8.8.8-1.x86_64",
#		"novell-NOVLxis-8.8.8-1.x86_64",
#		"novell-npkiapi-8.8.8-20130826_1813.x86_64",
#		"novell-npkit-8.8.8-20130826_1812.x86_64",
#		"novell-ntls-8.8.8.0-130725.x86_64",
#		"novell-pkiserver-8.8.8-20130826_1813.x86_64",
#		"libstdc++",
             ]:
   ensure => "present"
   }

}

