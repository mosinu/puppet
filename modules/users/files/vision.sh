#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us

/usr/sbin/groupadd -g 5009 vision
/usr/sbin/groupadd -g 5010 axis

#mkdir -p /home/NAS

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts
######################

if id -u vision >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p 'aqExkcWTa9mvM' -d /home/vision vision;
else
        /usr/sbin/useradd -u 5009 -g vision -p 'aqExkcWTa9mvM' -c "Vision Application Account" -d /home/vision vision;
fi
        
if id -u axis >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p 'aqExkcWTa9mvM' -d /home/axis axis;
else
        /usr/sbin/useradd -u 5010 -g axis -p 'aqExkcWTa9mvM' -c "Vision Test System Supplier Emulator" -d /home/axis axis;
fi 

######################
# User Accounts
######################

# 
#if id -u u55002 >/dev/null 2>&1 ; then
#	/usr/sbin/usermod -p 'M.1as74XxW94c' -d /home/NAS/u55002 u55002;
#else
#	/usr/sbin/useradd -u 55002 -g vision -G axis -p 'M.1as74XxW94c' -c "Michael Brown" -d /home/NAS/u55002 u55002;
#fi
