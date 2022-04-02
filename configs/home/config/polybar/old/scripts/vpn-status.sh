#!/bin/sh

vpn="$(nmcli -t -f name,type connection show --order name --active 2>/dev/null | grep vpn | head -1 | cut -d ':' -f 1)"

if [ -n "$vpn" ]; then
	echo "VPN: $vpn"
else
	echo "VPN: Down "
fi