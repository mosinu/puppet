#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us

/usr/sbin/groupadd -g 5016 visiond

mkdir -p /home/NAS

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts
######################

if id -u visiond >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '$1$NFxCuv9m$UaG6AdhdOiIXBgrITLXcT0' -d /home/visiond visiond;
else
        /usr/sbin/useradd -u 5016 -g visiond -p '$1$NFxCuv9m$UaG6AdhdOiIXBgrITLXcT0' -c "Vision Direct Application Account" -d /home/visiond visiond;
fi
        
######################
# User Accounts
######################
