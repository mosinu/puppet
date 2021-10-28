#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us
/usr/sbin/groupadd -g 5013 mitg

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts
######################

if id -u mitg >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '!!' -d /opt/mitg mitg;
else
        /usr/sbin/useradd -u 5013 -g mitg -p '!!' -c "PPM App User" -d /opt/mitg mitg;
fi
 
######################
# User Accounts
######################

#if id -u t10236 >/dev/null 2>&1 ; then
#        /usr/sbin/usermod -p '$1$Fa5kkFwP$yYVVpat4kfoVkCdPH2ynJ0' -d /home/NAS/t10236 t10236;
#else
#        /usr/sbin/useradd -u 10236 -g ppmadm -p '$1$Fa5kkFwP$yYVVpat4kfoVkCdPH2ynJ0' -c "Nagaraju Belidhe, Wissen PPM Admin User" -d /home/NAS/t10236 t10236;
#fi
#
