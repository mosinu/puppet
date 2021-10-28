#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for us
/usr/sbin/groupadd -g 5050 sysadmin

mkdir -p /home/NAS

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10
# 

######################
# Application Accounts
######################


######################
# User Accounts
######################

if id -u t10253 >/dev/null 2>&1 ; then
	/usr/sbin/usermod -p '$6$0b0aWry7LgWEHMPg$O7bPNeMURDz4/nMqRdooIbNN658Ys1RXzmRRULCIU3ewdZ4XSaRDRkxyPnu4s.Wr2vwpEmMtDUmsRQXJLPKPK1' -d /home/NAS/t10253 t10253;
else
	/usr/sbin/useradd -u 10253 -g sysadmin -p '$6$0b0aWry7LgWEHMPg$O7bPNeMURDz4/nMqRdooIbNN658Ys1RXzmRRULCIU3ewdZ4XSaRDRkxyPnu4s.Wr2vwpEmMtDUmsRQXJLPKPK1' -c "Will Harris" -d /home/NAS/t10253 t10253;
fi

#
if id -u u32883 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p 'aqExkcWTa9mvM' -d /home/NAS/u32883 u32883;
else
        /usr/sbin/useradd -u 32883 -g sysadmin -p 'aqExkcWTa9mvM' -c "Joe O'Connor" -d /home/NAS/u32883 u32883;
fi

#
if id -u u52646 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p 'AljzCU88MdCU6' -d /home/NAS/u52646 u52646;
else
        /usr/sbin/useradd -u 52646 -g sysadmin -p 'AljzCU88MdCU6' -c "Stuart Krivis" -d /home/NAS/u52646 u52646;
fi

#
if id -u u57057 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p 'HZd7PvssbchU' -d /home/NAS/u57057 u57057;
else
        /usr/sbin/useradd -u 57057 -g sysadmin -p 'HZd7PvssbchU' -c "Darry Perry" -d /home/NAS/u57057 u57057;
fi

#
#if id -u u57680 >/dev/null 2>&1 ; then
#        /usr/sbin/usermod -p '!!##DELETEME##' -d /home/NAS/u57680 u57680;
#else
#        /usr/sbin/useradd -u 57680 -g sysadmin -p '!!##DELETEME##' -c "Moore Blount" -d /home/NAS/u57680 u57680;
#fi

#
if id -u u71145 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '$1$h5ssT86b$CDWraHe1Wojwx9x.lFI.m/' -d /home/NAS/u71145 u71145;
else
        /usr/sbin/useradd -u 71145 -g sysadmin -p '$1$h5ssT86b$CDWraHe1Wojwx9x.lFI.m/' -c "Craig Cook" -d /home/NAS/u71145 u71145;
fi

#
#if id -u u83404 >/dev/null 2>&1 ; then
#        /usr/sbin/usermod -p 'o3YWZ7IJHw0cw' -d /home/NAS/u83404 u83404;
#else
#        /usr/sbin/useradd -u 83404 -g sysadmin -p 'o3YWZ7IJHw0cw' -c "Todd McDonald" -d /home/NAS/u83404 u83404;
#fi

#
if id -u u93021 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -p '$1$D3I2kAA0$9CWY6yIQKFHRz1qC44l0F.' -d /home/NAS/u93021 u93021;
else
        /usr/sbin/useradd -u 93021 -g sysadmin -p '$1$D3I2kAA0$9CWY6yIQKFHRz1qC44l0F.' -c "Lynn Barbee - IT Infrastructure Manager" -d /home/NAS/u93021 u93021;
fi

#
