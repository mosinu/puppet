#!/bin/bash
PATH=$PATH

#####################
#Group Accounts
#####################

# Create the group for us
/usr/sbin/groupadd -g 5003 cabiadm

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.


######################
# GUI Access
######################

# This is required for the application account to be able to use X GUI
# The X session runs as root, root cannot by default read the NAS dir

/usr/sbin/usermod -G cabiadm root


sleep 10

#####################
#Application Accounts 
#####################

if id -u cabiadm >/dev/null 2>&1 ; then
        /usr/sbin/usermod -g cabiadm -p '!!' -d /home/NAS/cabiadm cabiadm;
else
        /usr/sbin/useradd -u 5003 -g cabiadm -p '!!' -c "CA Business Intelligence App user" -d /home/NAS/cabiadm cabiadm;
fi
