#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us
/usr/sbin/groupadd -g 5009 expadmin
/usr/sbin/groupadd -g 5014 expsupp
/usr/sbin/groupadd -g 60002 noaccess

#mkdir -p /home/NAS

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts
######################

if id -u custom >/dev/null 2>&1 ; then
	/usr/sbin/usermod -p '!!' -d /opt/export/home/custom custom;
else
	/usr/sbin/useradd -u 6004 -g expadmin -p '!!' -c "GPI Custom, Exploris" -d /opt/export/home/custom custom;
fi
#
if id -u ftpuser >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '$1$45tfHMSY$mAWghE1dmGvzInlEkYLoe/' -d /opt/export/home/ftpuser -s /sbin/nologin ftpuser;  
else
        /usr/sbin/useradd -u 4000 -g expadmin -p '$1$45tfHMSY$mAWghE1dmGvzInlEkYLoe/' -c "FTP User, Exploris" -d /opt/export/home/ftpuser ftpuser;
fi

#if id -u 1carzftp >/dev/null 2>&1 ; then
#        /usr/sbin/usermod -p '$1$GglF.qjt$NV6iYy5tS0gXbEHrTZkgA.' -d /home/NAS/1carzftp 1carzftp;
#else
#        /usr/sbin/useradd -u 49999 -g noaccess -p '$1$GglF.qjt$NV6iYy5tS0gXbEHrTZkgA.' -c "Client FTP, Exploris" -d /home/1carzftp 1carzftp;
#fi
#
if id -u scpuser >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '!!' -d /opt/export/home/scpuser scpuser;
else
        /usr/sbin/useradd -u 4001 -g expadmin -p '!!' -c "Secure Copy Transfer, Exploris" -d /opt/export/home/scpuser scpuser;
fi


######################
# User Accounts
######################
