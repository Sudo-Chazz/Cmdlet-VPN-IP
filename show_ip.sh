#!/bin/bash


if nmcli con show --active | grep -q vpn; then
	
	ip a show tun0 | egrep -o '([0-9]{1,3}[\.]){3}[0-9]{1,3}' | sed -n '1p' 
else
	echo "VPN inactive"
fi
