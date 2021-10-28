#!/bin/bash

##
## This script creates the version php, link, icpw_iap, and control links in /var/www/html. It needs to be run as root or via sudo.

if [ $LOGNAME != root ]
then
	echo "Must have root privileges to run this program - usage is <sudo create_exp_htdocs_links.sh>"
	exit 1
fi

cd /var/www/html

echo "Type the Exploris version press <Return>. Example: icpw2_53_0_1_104"

read VERSION

ln -s /usr/local/exploris/$VERSION/php $VERSION

rm link 
ln -s /usr/local/exploris/$VERSION/php link
rm icpw_iap 
ln -s /usr/local/exploris/$VERSION/php icpw_iap
rm control 
ln -s /usr/local/exploris/$VERSION/php control
