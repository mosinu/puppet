class ora_admin::install {

#	"j2sdk.i586",               # Installed via the java class
   package { [
        "mutt" ,
        "perl-DBI.i386" ,
        "perl-MailTools" ,
        "system-config-printer" ,
        "cups" ,
        "kernel-PAE.i686" ,
        "e4fsprogs.i386" ,
	"perl-DBD-Oracle.i386",
        ]:
   ensure => present
   }

}
