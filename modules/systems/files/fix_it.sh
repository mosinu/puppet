#!/bin/bash
#
PATH=$PATH

echo "alias net-pf-10 off" >> /etc/modprobe.conf
echo "options ipv6 disable=1" >> /etc/modprobe.conf
sed -i 's/NETWORKING_IPV6=yes/NETWORKING_IPV6=no/g' /etc/sysconfig/network

