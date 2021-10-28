#!/bin/bash

###################################
# This file is under puppet control
###################################

export PATH=/opt/pbis/bin/:$PATH

# This is used when the cronjob hangs
# it could be removed but I left it for
# educational purposes
#kill -9 `pidof awk`
#kill -9 `pidof -x /usr/bin/run-parts`
#kill -9 `pidof -x /etc/cron.hourly/adcleanup.sh`
#sleep 30

seconds=$(( (RANDOM%100+1)*2 ))
sleep $seconds

/opt/pbis/bin/ad-cache --delete-all >& /dev/null
/usr/bin/getent group >& /dev/null
