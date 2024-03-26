#!/usr/bin/bash
batteryvalue=$( cat /sys/class/power_supply/ps-controller-battery-88:03:4c:17:04:f0/capacity )
re='^[0-9]+$'
if [[ $batteryvalue =~ $re ]] ; then
	echo $batteryvalue
else
	echo -
fi
