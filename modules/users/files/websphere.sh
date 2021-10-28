#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us

/usr/sbin/groupadd -g 5021 wasadmin

mkdir -p /home/NAS

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 5

######################
# Application Accounts
######################

if id -u wasadmin >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '!!!$1$NFxCuv9m$UaG6AdhdOiIXBgrITLXcT0' -d /home/wasadmin wasadmin;
else
        /usr/sbin/useradd -u 5021 -g wasadmin -p '!!!$1$NFxCuv9m$UaG6AdhdOiIXBgrITLXcT0' -c "Websphere Application Account" -d /home/wasadmin wasadmin;
fi
        
######################
# User Accounts
######################
