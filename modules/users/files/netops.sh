#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us
/usr/sbin/groupadd -g 5010 netops

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts
######################


######################
# User Accounts
######################
 
if id -u u44179 >/dev/null 2>&1 ; then
	/usr/sbin/usermod -p '$1$MpbZJmyE$czJw9bNCBHEJeuLsbcKKA0' -d /home/NAS/u44179 u44179; 
else
	/usr/sbin/useradd -u 44179 -g netops -p '$1$MpbZJmyE$czJw9bNCBHEJeuLsbcKKA0' -c "Lorenzo Brooks, Network Operations" -d /home/NAS/u44179 u44179;
fi
# 
