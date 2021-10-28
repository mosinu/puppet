class graphite::test {

        file { [ 
		"/opt/build",
#		"/opt/build/whisper",
		]:
           ensure => "directory",
           recurse => true,
           owner  => "root",
           group  => "root",
           mode   => 775,
        }

	tarball { "whisper-0.9.10.tar.gz":
         module_name => "graphite",
         install_dir => "/opt/build/whisper",
         pkg_tgz     => "whisper-0.9.10.tar.gz",
    	}	
}
