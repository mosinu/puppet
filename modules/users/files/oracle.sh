#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us
/usr/sbin/groupadd -g 5000 dba

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts
######################

if id -u oracle >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '!!' -d /home/oracle oracle;
else
        /usr/sbin/useradd -u 5000 -g dba -p '!!' -c "Oracle Software Owner" -d /home/oracle oracle;
fi
