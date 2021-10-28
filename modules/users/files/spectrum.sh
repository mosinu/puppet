#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us
/usr/sbin/groupadd -g 5002 spectrum

######################
# GUI Access
######################

#This is required for the spectrum application to be able to use X GUI
# The X session runs as root, root cannot by default read the NAS dir

/usr/sbin/usermod -G spectrum root

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts 
######################

if id -u spectrum >/dev/null 2>&1 ; then
        /usr/sbin/usermod -g spectrum -p '!!' -d /home/NAS/spectrum spectrum;
else
        /usr/sbin/useradd -u 5002 -g spectrum -p '!!' -c "Spectrum App user" -d /home/NAS/spectrum spectrum;
fi
