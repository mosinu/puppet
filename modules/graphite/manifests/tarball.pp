define tarball($pkg_tgz, $module_name, $install_dir) {

    # create the install directory
    file { "$install_dir":
        ensure  => directory,
    }

    # download the tgz file
    file { "$pkg_tgz":
        path    => "/tmp/$pkg_tgz",
        source  => "puppet:///modules/$module_name/$pkg_tgz",
        notify  => Exec["untar $pkg_tgz"],
    }

    # untar the tarball at the desired location
    exec { "untar $pkg_tgz":
        command => "/bin/rm -rf $install_dir/*; /bin/tar xzvf /tmp/$pkg_tgz -C $install_dir/",
        refreshonly => true,
        require => File["/tmp/$pkg_tgz", "$install_dir"],
    }
}
