#!/bin/bash
if [[ "$1" == "--cpu" ]]; then
	cpuusage=`eww get EWW_CPU --config /home/sand/Dropbox/linux/bars/eww/desktopwidgets | jq -r ".[\"avg\"]"`
	echo $(printf %02d $cpuusage)	
else
	echo -
fi