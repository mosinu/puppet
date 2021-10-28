#!/bin/bash
PATH=$PATH

######################
#Group Accounts
######################

# Create the group for us

/usr/sbin/groupadd -g 5005 wilyadm
/bin/cp -Rp /home/NAS/wilyadm /home
# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts 
######################

if id -u wilyadm >/dev/null 2>&1 ; then
        /usr/sbin/usermod -g wilyadm -p '!!' -d /home/wilyadm wilyadm;
else
        /usr/sbin/useradd -u 5005 -g wilyadm -p '!!' -c "Wily Admin user" -d /home/wilyadm wilyadm;
fi
