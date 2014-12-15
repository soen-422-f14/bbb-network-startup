#!/bin/bash
# This script must be run as root.
# When the Beaglebone Black reboots, networking configuration
# is lost. It is the aim of this script to automate the setup
# when the system boots.

# Set the gateway to your workstation.
/sbin/route add default gateway 192.168.7.1

# Append a new nameserver to the resolv.conf file.
echo "nameserver 8.8.8.8" >> /etc/resolv.conf