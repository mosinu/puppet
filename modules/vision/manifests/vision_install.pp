class vision::vision_install {
        file { "/etc/yum.repos.d/vision.repo":
              ensure => present,
              source => "puppet:///modules/${module_name}/vision.repo",
              group   => "root",
              owner => "root",
              mode  => "0644"
        }

        file { [
                "/opt/vision",
               ]:
           ensure => "directory",
#           recurse => true,
           owner  => "vision",
           group  => "vision",
           mode   => 2777,
        }

        file { [
                "/opt/vision/ftp",
                "/opt/vision/ftp/ASN",
                "/opt/vision/ftp/ASN_BKP",
		"/export/",
		"/export/home/",
               ]:
           ensure => "directory",
           owner  => "vision",
           group  => "vision",
           mode   => 2777,
        }

	file { [ "/usr/share/tomcat5",
		 "/var/cache/tomcat5",
		 "/var/log/tomcat5",
		]:
           ensure => "directory",
#           recurse => true,
           owner  => "tomcat5",
           group  => "vision",
           mode   => 2777,
        }


        file { "/export/home/ftpuser":
           ensure => 'link',
           target => '/opt/vision/ftp',
        }

        file { [
                "/etc/tomcat5",
               ]:
           ensure => "directory",
           owner  => "tomcat5",
           group  => "vision",
           mode   => 2776,
        }

        file { [
                "/var/lib/tomcat5",
               ]:
           ensure => "directory",
 #          recurse => true,
           owner  => "tomcat5",
           group  => "vision",
           mode   => 2776,
        }

#	"j2sdk",               # Installed via the java class
   package { [
             "jakarta-tomcat-5.0-28",
             "ant",
             "MySQL-server-4.0.24",
	     "sendmail",
	     "cx_Oracle",
	     "python-twisted-web",
	     "python-twisted-names",
	     "python-twisted-mail",
	     "oracle-instantclient-basic",
             ]:
   ensure => present
   }

   package { [
             "postfix",
             "mysql-libs",
	     ]:
   ensure => absent
   }

}
