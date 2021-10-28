#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us
/usr/sbin/groupadd -g 95 radiusd

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10
 
######################
# Application Accounts
######################

if id -u radiusd >/dev/null 2>&1 ; then
	/usr/sbin/usermod -p '!!' -d /home/NAS/radiusd radiusd; 
else
	/usr/sbin/useradd -u 95 -g radiusd -p '!!' -c "Radiusd Application Account" -d /home/NAS/radiusd radiusd;
fi
# 
