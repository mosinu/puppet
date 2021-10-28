#!/bin/bash
PATH=$PATH

#####################
#Group Accounts
#####################

# Create the group for us
/usr/sbin/groupadd -g 5017 gpibots

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.


######################
# GUI Access
######################

# This is required for the application account to be able to use X GUI
# The X session runs as root, root cannot by default read the NAS dir

/usr/sbin/usermod -G gpibots root


sleep 10

#####################
#Application Accounts 
#####################

if id -u gpibots >/dev/null 2>&1 ; then
        /usr/sbin/usermod -g gpibots -p '!!' -d /home/gpibots gpibots;
else
        /usr/sbin/useradd -u 5017 -g gpibots -p '!!' -c "EDI BOT App user" -d /home/gpibots gpibots;
fi

