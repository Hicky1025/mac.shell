#!/usr/bin/bash

read -p "plz select interface(LAN:0,Wi-Fi:1) : " int
if [ $int == 0 ]; then
    read -p "plz select add type(DHCP:0,Manual:1) : " add_type
    if [ $add_type == 0 ]; then
        networksetup -setdhcp "USB 10/100/1000 LAN"
    else
        read -p "plz insert address : " address
        read -p "plz insert subnet : " subnet
        read -p "plz insert gateway : " gateway
        if [ $subnet == 1 ]; then
            subnet=128.0.0.0
        elif [ $subnet == 2 ]; then
            subnet=192.0.0.0
        elif [ $subnet == 3 ]; then
            subnet=224.0.0.0
        elif [ $subnet == 3 ]; then
            subnet=240.0.0.0
        elif [ $subnet == 5 ]; then
            subnet=248.0.0.0
        elif [ $subnet == 6 ]; then
            subnet=252.0.0.0
        elif [ $subnet == 7 ]; then
            subnet=254.0.0.0
        elif [ $subnet == 8 ]; then
            subnet=255.0.0.0
        elif [ $subnet == 9 ]; then
            subnet=255.128.0.0
        elif [ $subnet == 10 ]; then
            subnet=255.192.0.0
        elif [ $subnet == 11 ]; then
            subnet=255.224.0.0
        elif [ $subnet == 12 ]; then
            subnet=255.240.0.0
        elif [ $subnet == 13 ]; then
            subnet=255.248.0.0
        elif [ $subnet == 14 ]; then
            subnet=255.252.0.0
        elif [ $subnet == 15 ]; then
            subnet=255.254.0.0
        elif [ $subnet == 16 ]; then
            subnet=255.255.0.0
        elif [ $subnet == 17 ]; then
            subnet=255.255.128.0
        elif [ $subnet == 18 ]; then
            subnet=255.255.192.0
        elif [ $subnet == 19 ]; then
            subnet=255.255.224.0
        elif [ $subnet == 20 ]; then
            subnet=255.255.240.0
        elif [ $subnet == 21 ]; then
            subnet=255.255.248.0
        elif [ $subnet == 22 ]; then
            subnet=255.255.252.0
        elif [ $subnet == 23 ]; then
            subnet=255.255.254.0
        elif [ $subnet == 24 ]; then
            subnet=255.255.255.0
        elif [ $subnet == 25 ]; then
            subnet=255.255.255.128
        elif [ $subnet == 26 ]; then
            subnet=255.255.255.192
        elif [ $subnet == 27 ]; then
            subnet=255.255.255.224
        elif [ $subnet == 28 ]; then
            subnet=255.255.255.240
        elif [ $subnet == 29 ]; then
            subnet=255.255.255.248
        elif [ $subnet == 30 ]; then
            subnet=255.255.255.252
        elif [ $subnet == 31 ]; then
            subnet=255.255.255.254
        elif [ $subnet == 32 ]; then
            subnet=255.255.255.255
        fi
        networksetup -setmanual "USB 10/100/1000 LAN" $address $subnet $gateway
    fi
elif [ $int == 1 ]; then
    read -p "plz select add type(DHCP:0,Manual:1) : " add_type
    if [ $add_type == 0 ]; then
        networksetup -setdhcp "Wi-Fi"
    else
        read -p "plz insert address : " address
        read -p "plz insert subnet : " subnet
        read -p "plz insert gateway : " gateway
        if [ $subnet == 1 ]; then
            subnet=128.0.0.0
        elif [ $subnet == 2 ]; then
            subnet=192.0.0.0
        elif [ $subnet == 3 ]; then
            subnet=224.0.0.0
        elif [ $subnet == 3 ]; then
            subnet=240.0.0.0
        elif [ $subnet == 5 ]; then
            subnet=248.0.0.0
        elif [ $subnet == 6 ]; then
            subnet=252.0.0.0
        elif [ $subnet == 7 ]; then
            subnet=254.0.0.0
        elif [ $subnet == 8 ]; then
            subnet=255.0.0.0
        elif [ $subnet == 9 ]; then
            subnet=255.128.0.0
        elif [ $subnet == 10 ]; then
            subnet=255.192.0.0
        elif [ $subnet == 11 ]; then
            subnet=255.224.0.0
        elif [ $subnet == 12 ]; then
            subnet=255.240.0.0
        elif [ $subnet == 13 ]; then
            subnet=255.248.0.0
        elif [ $subnet == 14 ]; then
            subnet=255.252.0.0
        elif [ $subnet == 15 ]; then
            subnet=255.254.0.0
        elif [ $subnet == 16 ]; then
            subnet=255.255.0.0
        elif [ $subnet == 17 ]; then
            subnet=255.255.128.0
        elif [ $subnet == 18 ]; then
            subnet=255.255.192.0
        elif [ $subnet == 19 ]; then
            subnet=255.255.224.0
        elif [ $subnet == 20 ]; then
            subnet=255.255.240.0
        elif [ $subnet == 21 ]; then
            subnet=255.255.248.0
        elif [ $subnet == 22 ]; then
            subnet=255.255.252.0
        elif [ $subnet == 23 ]; then
            subnet=255.255.254.0
        elif [ $subnet == 24 ]; then
            subnet=255.255.255.0
        elif [ $subnet == 25 ]; then
            subnet=255.255.255.128
        elif [ $subnet == 26 ]; then
            subnet=255.255.255.192
        elif [ $subnet == 27 ]; then
            subnet=255.255.255.224
        elif [ $subnet == 28 ]; then
            subnet=255.255.255.240
        elif [ $subnet == 29 ]; then
            subnet=255.255.255.248
        elif [ $subnet == 30 ]; then
            subnet=255.255.255.252
        elif [ $subnet == 31 ]; then
            subnet=255.255.255.254
        elif [ $subnet == 32 ]; then
            subnet=255.255.255.255
        fi
        networksetup -setmanual "Wi-Fi" $address $subnet $gateway
    fi
fi    
