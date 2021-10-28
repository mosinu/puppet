#!/bin/bash
PATH=$PATH

#####################
#Group Accounts
#####################

# Create the group for us
/usr/sbin/groupadd -g 27 mysql

#mysql:x:27:27:MySQL Server:/var/lib/mysql:/bin/bash

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.


######################
# GUI Access
######################

# This is required for the application account to be able to use X GUI
# The X session runs as root, root cannot by default read the NAS dir

#/usr/sbin/usermod -G gpibots root


sleep 10

#####################
#Application Accounts 
#####################

if id -u mysql >/dev/null 2>&1 ; then
        /usr/sbin/usermod -g mysql -p '!!' -d /opt/mysql mysql;
else
        /usr/sbin/useradd -u mysql -g mysql -p '!!' -c "MySQL Server" -d /opt/mysql mysql;
fi

