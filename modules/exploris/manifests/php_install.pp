class exploris::php_install {

        file { "/etc/yum.repos.d/exploris-php.repo":
              ensure => present,
              source => "puppet:///modules/${module_name}/exploris-php.repo",
              group   => "root",
              owner => "root",
              mode  => "0644"
        }

	package { [
		"php-5.3-fcgi-zend-server-5.3.5-22.x86_64" ]:
        ensure => absent
        }

	package { [ 
		"php-5.2-optimizer-plus-zend-server-4.1.14-17.x86_64",
		"php-5.2-code-tracing-zend-server-4.1.55-31.x86_64",
		"php-5.2-zip-zend-server-5.2.17-8.x86_64",
		"php-5.2-mysql-zend-server-5.2.17-12.x86_64",
		"php-5.2-page-cache-zend-server-6:4.0.73-16.x86_64",
		"php-5.2-tokenizer-zend-server-5.2.17-8.x86_64",
		"php-5.2-soap-zend-server-5.2.17-8.x86_64",
		"php-5.2-curl-zend-server-5.2.17-15.x86_64",
		"php-5.2-extension-manager-zend-server-5.1.83-8.x86_64",
		"php-5.2-debugger-zend-server-5.3.23-12.x86_64",
		"php-5.2-posix-zend-server-5.2.17-8.x86_64",
		"php-5.2-intl-zend-server-5.2.17-9.x86_64",
		"php-5.2-mime-magic-zend-server-5.2.17-11.x86_64",
		"php-5.2-fcgi-zend-server-5.2.17-16.x86_64",
		"php-5.2-mcrypt-zend-server-5.2.17-8.x86_64",
		"php-5.2-pgsql-zend-server-5.2.17-8.x86_64",
		"php-5.2-xmlwriter-zend-server-5.2.17-7.x86_64",
		"php-5.2-calendar-zend-server-5.2.17-8.x86_64",
		"php-5.2-gd-zend-server-5.2.17-10.x86_64",
		"php-5.2-ctype-zend-server-5.2.17-8.x86_64",
		"php-5.2-xsl-zend-server-5.2.17-8.x86_64",
		"php-5.2-sockets-zend-server-5.2.17-8.x86_64",
		"php-5.2-pdo-oci-zend-server-5.2.17-16.x86_64",
		"php-5.2-zend-extensions-5.0.4-37.noarch",
		"php-5.2-zendutils-zend-server-1.0.67-9.x86_64",
		"php-5.2-dev-zend-server-5.2.17-20.x86_64",
		"php-5.2-pdo-pgsql-zend-server-5.2.17-9.x86_64",
		"php-5.2-exif-zend-server-5.2.17-9.x86_64",
		"php-5.2-tidy-zend-server-5.2.17-8.x86_64",
		"php-5.2-bcmath-zend-server-5.2.17-8.x86_64",
		"php-5.2-mhash-zend-server-5.2.17-8.x86_64",
		"php-5.2-data-cache-zend-server-4.0.59-11.x86_64",
		"php-5.2-sqlite-zend-server-5.2.17-8.x86_64",
		"php-5.2-oci8-zend-server-5.2.17-13.x86_64",
		"php-5.2-xmlreader-zend-server-5.2.17-7.x86_64",
		"php-5.2-mysqli-zend-server-5.2.17-12.x86_64",
		"php-5.2-monitor-ui-zend-server-4.1.146-43.x86_64",
		"php-5.2-ldap-zend-server-5.2.17-10.x86_64",
		"php-5.2-session-clustering-zend-server-4.2.75-56.x86_64",
		"php-5.2-gettext-zend-server-5.2.17-8.x86_64",
		"php-5.2-mbstring-zend-server-5.2.17-8.x86_64",
		"php-5.2-monitor-lite-zend-server-4.1.146-42.x86_64",
		"php-5.2-pdo-mysql-zend-server-5.2.17-13.x86_64",
		"php-5.2-common-extensions-zend-server-5.0.4-33.noarch",
		"php-5.2-jobqueue-zend-server-4.1.66-26.x86_64",
		"php-5.2-imap-zend-server-5.2.17-8.x86_64",
		"php-5.2-json-zend-server-5.2.17-8.x86_64",
		"php-5.2-download-server-zend-server-1.5.48-17.x86_64",
		"php-5.2-ftp-zend-server-5.2.17-8.x86_64",
		"php-5.2-bz2-zend-server-5.2.17-8.x86_64",
		"php-5.2-gui-zend-server-6.0.31-95.noarch",
		"php-5.2-cm-utils-pe-zend-server-1.0.14-18.x86_64",
		"zend-pear.noarch",
		  ]:
	ensure => present
	}

        file { '/usr/local/bin/php':
           ensure => 'link',
           target => '/usr/local/zend/bin/php',
        }

}
