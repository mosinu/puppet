#!/bin/bash
PATH=$PATH

#####################
#Group Accounts
#####################

# Create the group for us
/usr/sbin/groupadd -g 5004 ehealth

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

#####################
#Application Accounts 
#####################

if id -u ehealth >/dev/null 2>&1 ; then
        /usr/sbin/usermod -g ehealth -p '!!' -d /home/NAS/ehealth ehealth;
else
        /usr/sbin/useradd -u 5004 -g ehealth -p '!!' -c "eHealth App user" -d /home/NAS/ehealth ehealth;
fi
