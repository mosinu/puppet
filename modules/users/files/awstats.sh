#!/bin/bash
PATH=$PATH

#####################
#Group Accounts
#####################

# Create the group for us
/usr/sbin/groupadd -g 7000 awstats

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.


######################
# GUI Access
######################

# This is required for the application account to be able to use X GUI
# The X session runs as root, root cannot by default read the NAS dir

#/usr/sbin/usermod -G awstats,entmon root


sleep 10

#####################
#Application Accounts 
#####################

if id -u awstats >/dev/null 2>&1 ; then
        /usr/sbin/usermod -g awstats -p '!!' -d /home/NAS/awstats awstats;
else
        /usr/sbin/useradd -u 7000 -g awstats -p '!!' -c "Awstats App user" -d /home/NAS/awstats awstats;
fi
