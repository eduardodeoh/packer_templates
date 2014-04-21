#!/bin/bash -eux

# Make sure Udev doesn't block our network
# http://6.ptmc.org/?p=164
rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm /lib/udev/rules.d/75-persistent-net-generator.rules
rm -rf /dev/.udev/ /var/lib/dhcp3/*
echo "pre-up sleep 2" >> /etc/network/interfaces