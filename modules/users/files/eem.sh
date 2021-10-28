#!/bin/bash
PATH=$PATH

#####################
#Group Accounts
#####################

# Create the group for us
/usr/sbin/groupadd -g 5006 etrdir

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

#####################
#Application Accounts
#####################

if id -u dsa >/dev/null 2>&1 ; then
        /usr/sbin/usermod -g etrdir -p '!!' -d /opt/CA/Directory/dxserver dsa;
else
        /usr/sbin/useradd -u 5006 -g etrdir -p '!!' -c "CA EEM App user" -d /opt/CA/Directory/dxserver dsa;
fi
