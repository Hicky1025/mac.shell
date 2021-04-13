#!/usr/bin/bash

old_vlan=$(ifconfig | grep vlan: | cut -c 8- | sed 's/parent.*//')
if [ -n "$old_vlan" ]; then
  networksetup -deleteVLAN vlan0 en5 $old_vlan
fi
read -p "vlan ID:" vlan
if [ $vlan = 0 ]; then
    exit $status
fi
networksetup -createVLAN vlan0 en5 $vlan