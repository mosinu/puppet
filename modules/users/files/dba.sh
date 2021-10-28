#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us
# users::oracle puppet class also needs to be used if you add these users
#/usr/sbin/groupadd -g 5000 dba
/usr/sbin/groupadd -g 68658 u68658
#/usr/sbin/groupadd -g 80741 u80741
/usr/sbin/groupadd -g 77686 u77686

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts
######################


######################
# User Accounts
######################

if id -u u68658 >/dev/null 2>&1 ; then
	/usr/sbin/usermod -G dba,oaa -p 'rkd5QeuRCmJls' -d /home/NAS/u68658 u68658; 
else
	/usr/sbin/useradd -u 68658 -g u68658 -G dba,oaa -p 'rkd5QeuRCmJls' -c "Allen Long, DBA" -d /home/NAS/u68658 u68658;
fi
# 
#if id -u u80741 >/dev/null 2>&1 ; then
#        /usr/sbin/usermod -G dba,oaa -p 'aqSJalTtHnJl.' -d /home/NAS/u80741 u80741;
#else
#        /usr/sbin/useradd -u 80741 -g u80741 -G dba,oaa -p 'aqSJalTtHnJl.' -c "Sunil Poosa, DBA" -d /home/NAS/u80741 u80741;
#fi
# 
if id -u u77686 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G dba,oaa -p '0VyjS2Z7ctHUA' -d /home/NAS/u77686 u77686;
else
        /usr/sbin/useradd -u 77686 -g u77686 -G dba,oaa -p '0VyjS2Z7ctHUA' -c "Noah Chanmala, DBA" -d /home/NAS/u77686 u77686;
fi
