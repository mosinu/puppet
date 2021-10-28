#!/bin/bash
PATH=$PATH

######################
# Group Accounts
######################

# Create the group for Oracle Application Support
/usr/sbin/groupadd -g 5008 oas

# All group adds should be above this line
# We sleep here to let the groups get added before we continue.

sleep 10

######################
# Application Accounts
######################


######################
# User Accounts
######################

if id -u u63848 >/dev/null 2>&1 ; then
	/usr/sbin/usermod -G oaa -p 'PUCGtz0z/DLwc' -d /home/NAS/u63848 u63848; 
else
	/usr/sbin/useradd -u 63848 -g oas -G oaa -p 'PUCGtz0z/DLwc' -c "Eric Wright, Oracle Application Support" -d /home/NAS/u63848 u63848;
fi
# 
if id -u u79161 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p 'st8IOPukHk73k' -d /home/NAS/u79161 u79161;
else
        /usr/sbin/useradd -u 79161 -g oas -G oaa -p 'st8IOPukHk73k' -c "Madhu Gundam, Oracle Application Support" -d /home/NAS/u79161 u79161;
fi
# 
if id -u u68644 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p 'zxEwhUOWEM0JU' -d /home/NAS/u68644 u68644;
else
        /usr/sbin/useradd -u 68644 -g oas -G oaa -p 'zxEwhUOWEM0JU' -c "Paul Phillips, Oracle Application Support" -d /home/NAS/u68644 u68644;
fi
#
if id -u u65695 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p 'v.SdGhbDKQrNY' -d /home/NAS/u65695 u65695;
else
        /usr/sbin/useradd -u 65695 -g oas -G oaa -p 'v.SdGhbDKQrNY' -c "Carlito Agner, Oracle Application Support" -d /home/NAS/u65695 u65695;
fi
#
if id -u u64157 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p '9N1eF0UcXvcz2' -d /home/NAS/u64157 u64157;
else
        /usr/sbin/useradd -u 64157 -g oas -G oaa -p '9N1eF0UcXvcz2' -c "Carol Honeycutt, Oracle Application Support" -d /home/NAS/u64157 u64157;
fi
#
if id -u u501 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p 'Kzq9Jc/y7ou/c' -d /home/NAS/u501 u501;
else
        /usr/sbin/useradd -u 50100 -g oas -G oaa -p 'Kzq9Jc/y7ou/c' -c "Donna Cuomo, Oracle Application Support" -d /home/NAS/u501 u501;
fi
##
if id -u u64946 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p 'nMoOpupCxZIls' -d /home/NAS/u64946 u64946;
else
        /usr/sbin/useradd -u 64946 -g oas -G oaa -p 'nMoOpupCxZIls' -c "Marie Tart, Oracle Application Support" -d /home/NAS/u64946 u64946;
fi
##
if id -u u2550 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p 'dTKWoGptzlX0s' -d /home/NAS/u2550 u2550;
else
        /usr/sbin/useradd -u 25500 -g oas -G oaa -p 'dTKWoGptzlX0s' -c "Melanie Reinke, Oracle Application Support" -d /home/NAS/u2550 u2550;
fi
##
if id -u u70855 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p '392UU18ukS2mw' -d /home/NAS/u70855 u70855;
else
        /usr/sbin/useradd -u 70855 -g oas -G oaa -p '392UU18ukS2mw' -c "Shivaji Madje, Oracle Application Support" -d /home/NAS/u70855 u70855;
fi
##
if id -u u68605 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p '/LRIsuKpqyNF.' -d /home/NAS/u68605 u68605;
else
        /usr/sbin/useradd -u 68605 -g oas -G oaa -p '/LRIsuKpqyNF.' -c "Swapna Rajalingari, Oracle Application Support" -d /home/NAS/u68605 u68605;
fi
##
if id -u t10191 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p 'oCDh0w0tWwlqI' -d /home/NAS/t10191 t10191;
else
        /usr/sbin/useradd -u 10191 -g oas -G oaa -p 'oCDh0w0tWwlqI' -c "Pratima Shree, Oracle Application Support" -d /home/NAS/t10191 t10191;
fi
##
if id -u u63728 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p 'y5zbyy.VNdm6U' -d /home/NAS/u63728 u63728;
else
        /usr/sbin/useradd -u 63728 -g oas -G oaa -p 'y5zbyy.VNdm6U' -c "Vasudeva Rao, Oracle Application Support" -d /home/NAS/u63728 u63728;
fi
##
if id -u t10240 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p 'D2/zhbJ/bLCrg' -d /home/NAS/t10240 t10240;
else
        /usr/sbin/useradd -u 10240 -g oas -G oaa -p 'D2/zhbJ/bLCrg' -c "Kalai Sulur, Oracle Application Support" -d /home/NAS/t10240 t10240;
fi
#
if id -u u92116 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p 'zxEwhUOWEM0JU' -d /home/NAS/u92116 u92116;
else
        /usr/sbin/useradd -u 92116 -g oas -G oaa -p 'zxEwhUOWEM0JU' -c "Robert Kerr, Oracle Application Support" -d /home/NAS/u92116 u92116;
fi
#
if id -u t10086 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p 'pvffwkeSr/lKY' -d /home/NAS/t10086 t10086;
else
        /usr/sbin/useradd -u 10086 -g oas -G oaa -p 'pvffwkeSr/lKY' -c "Peter Zierz, Oracle Application Support" -d /home/NAS/t10086 t10086;
fi
#
if id -u u24 >/dev/null 2>&1 ; then
        /usr/sbin/usermod -G oaa -p '7qnqhTwCzSfk2' -d /home/NAS/u24 u24;
else
        /usr/sbin/useradd -u 24000 -g oas -G oaa -p '7qnqhTwCzSfk2' -c "Kayla Leger, Oracle Application Support" -d /home/NAS/u24 u24;
fi
