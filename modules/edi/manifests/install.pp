class edi::install {

   package { [
             "httpd",
             "mod_ssl",
             "Django",
	     "python-django-appconf",
             "python",
             "python-cherrypy",
	     "mysqltuner",
	     "mod_wsgi",
#	     "python-sqlite2",
#	     "sqlite",
	     "MySQL-python",
#	     "python-psycopg2",
#	     "python-simplejson",
             ]:
   ensure => "present"
   }


}

