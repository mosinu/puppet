#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us
/usr/sbin/groupadd -g 5009 expadmin
/usr/sbin/groupadd -g 5014 expsupp

#mkdir -p /home/NAS

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts
######################

if id -u expadmin >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '!!' -d /home/NAS/expadmin expadmin;
else
        /usr/sbin/useradd -u 5009 -g expadmin -p '!!' -c "Exploris App User" -d /home/expadmin expadmin;
fi
# 
if id -u expsupp >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '!!' -d /home/NAS/expsupp expsupp;
else
        /usr/sbin/useradd -u 5014 -g expsupp -p '!!' -c "Exploris Support User" -d /home/expsupp expsupp;
fi
#

######################
# User Accounts
######################
