class vision::director_install {

        file { "/etc/yum.repos.d/vision.repo":
              ensure => present,
              source => "puppet:///modules/${module_name}/vision.repo",
              group   => "root",
              owner => "root",
              mode  => "0644"
        }

        file { [
                "/opt/director",
               ]:
           ensure => "directory",
           owner  => "visiond",
           group  => "visiond",
           mode   => 755,
        }

        file { [
                "/etc/tomcat5",
               ]:
           ensure => "directory",
           owner  => "tomcat5",
           group  => "visiond",
           mode   => 776,
        }

        file { [
                "/var/lib/tomcat5",
               ]:
           ensure => "directory",
           owner  => "tomcat5",
           group  => "visiond",
           mode   => 776,
        }

#            "java-1.6.0-openjdk" , # Installed via the java class
#	"j2sdk",               # Installed via the java class
   package { [
             "jakarta-tomcat-5.0-28",
             "ant",
	     "MySQL-server-4.0.24",
	     "java-1.6.0-openjdk-devel",
	     "axis",
	     "jakarta-commons-httpclient",
             ]:
   ensure => present
   }

}
