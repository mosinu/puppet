#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us
/usr/sbin/groupadd -g 5009 expadmin

#mkdir -p /home/NAS

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts
######################


######################
# User Accounts
######################

if id -u u1574 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '$1$GglF.qjt$NV6iYy5tS0gXbEHrTZkgA.' -d /home/NAS/u1574 u1574;
else
        /usr/sbin/useradd -u 01574 -g expadmin -p '$1$GglF.qjt$NV6iYy5tS0gXbEHrTZkgA.' -c "David Credle, Exploris" -d /home/NAS/u1574 u1574;
fi                                                           
#
if id -u u28373 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '$1$GglF.qjt$NV6iYy5tS0gXbEHrTZkgA.' -d /home/NAS/u28373 u28373;
else
        /usr/sbin/useradd -u 28373 -g expadmin -p '$1$GglF.qjt$NV6iYy5tS0gXbEHrTZkgA.' -c "Dave Vogel, Exploris" -d /home/NAS/u28373 u28373;
fi
#
if id -u u41228 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '$1$GglF.qjt$NV6iYy5tS0gXbEHrTZkgA.' -d /home/NAS/u41228 u41228;
else
        /usr/sbin/useradd -u 41228 -g expadmin -p '$1$GglF.qjt$NV6iYy5tS0gXbEHrTZkgA.' -c "Greg Schneider, Exploris" -d /home/NAS/u41228 u41228;
fi
#
if id -u u65939 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '$1$GglF.qjt$NV6iYy5tS0gXbEHrTZkgA.' -d /home/NAS/u65939 u65939;
else
        /usr/sbin/useradd -u 65939 -g expadmin -p '$1$GglF.qjt$NV6iYy5tS0gXbEHrTZkgA.' -c "Chris Bruno, Exploris" -d /home/NAS/u65939 u65939;
fi
