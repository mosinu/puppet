#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us
/usr/sbin/groupadd -g 6000 middleware

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts
######################


######################
# User Accounts
######################

if id -u u43028 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '4SCH0YqyVfwn.' -d /home/NAS/u43028 u43028;
else
        /usr/sbin/useradd -u 43028 -g middleware -p '4SCH0YqyVfwn.' -c "Todd Asby,Middleware Admin" -d /home/NAS/u43028 u43028;
fi
# 
if id -u u90324 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p 'QoS74MagMPzyA' -d /home/NAS/u90324 u90324;
else
        /usr/sbin/useradd -u 90324 -g middleware -p 'QoS74MagMPzyA' -c "Vijai Kumar,Middleware Admin" -d /home/NAS/u90324 u90324;
fi

