#!/bin/bash
PATH=$PATH
export GRAPHITE_ROOT=/opt/graphite
chown -R apache:apache /opt/graphite/
cd /opt/graphite/conf
pushd graphite-web
cd /opt/graphite/
bin/validate-storage-schemas.py
bin/build-index.sh
cd /opt/graphite/webapp/graphite
python manage.py syncdb
cd /opt/graphite/
bin/carbon-cache.py start
chown -R apache:apache /opt/graphite/
