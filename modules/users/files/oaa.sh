#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us
/usr/sbin/groupadd -g 5001 oaa
/usr/sbin/groupadd -g 5008 oas

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts
######################

if id -u applmgr >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '!!' -g oaa -G oas -d /home/applmgr applmgr;
        /bin/chgrp oaa /home/applmgr;
else
        /usr/sbin/useradd -u 5001 -g oaa -G oas -p '!!' -c "Application Manager" -d /home/applmgr applmgr;
fi
