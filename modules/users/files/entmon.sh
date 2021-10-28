#!/bin/bash
PATH=$PATH

#####################
# Group Accounts
#####################

# Create the group for us
/usr/sbin/groupadd -g 5007 entmon

#This is required for the spectrum application to be able to use X GUI
# The X session runs as root, root cannot by default read the NAS dir

#/usr/sbin/usermod -G entmon,spectrum,etrdir,cabiadm,ehealth,wilyadm root
#/usr/sbin/usermod -G entmon,spectrum,cabiadm root

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

#####################
# User Accounts 
#####################

#if id -u u51969 >/dev/null 2>&1 ; then
#        /usr/sbin/usermod -g entmon -G spectrum,etrdir,cabiadm,ehealth,wilyadm -p '9ELI6i7QvgHLg' -d /home/NAS/u51969 u51969;
#        /usr/sbin/usermod -g entmon -p '9ELI6i7QvgHLg' -d /home/NAS/u51969 u51969;
#else
#        /usr/sbin/useradd -u 51969 -g entmon -G spectrum,etrdir,cabiadm,ehealth,wilyadm -p '9ELI6i7QvgHLg' -c "Torrie Williams, Ent Monitoring" -d /home/NAS/u51969 u51969;
#        /usr/sbin/useradd -u 51969 -g entmon -p '9ELI6i7QvgHLg' -c "Torrie Williams, Ent Monitoring" -d /home/NAS/u51969 u51969;
#fi
# 
#if id -u t10194 >/dev/null 2>&1 ; then
#        /usr/sbin/usermod -g entmon -G spectrum,etrdir,cabiadm,ehealth,wilyadm -p '2S/vwu66zvPZc' -d /home/NAS/t10194 t10194;
#        /usr/sbin/usermod -g entmon -p '2S/vwu66zvPZc' -d /home/NAS/t10194 t10194;
#else
#        /usr/sbin/useradd -u 10194 -g entmon -G spectrum,etrdir,cabiadm,ehealth,wilyadm -p '2S/vwu66zvPZc' -c "Jim Maynard, Ent Monitoring" -d /home/NAS/t10194 t10194;
#        /usr/sbin/useradd -u 10194 -g entmon -p '2S/vwu66zvPZc' -c "Jim Maynard, Ent Monitoring" -d /home/NAS/t10194 t10194;
#fi
# 
