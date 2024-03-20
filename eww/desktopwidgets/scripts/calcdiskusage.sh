#!/bin/bash
# @@@@@@@@@@@@@@@@@@@@
# sand 2024 Mar 19
#
# @@@@@@@@@@@@@@@@@@@@

DISKUSAGEFULL=`eww get EWW_DISK --config /home/sand/Dropbox/linux/bars/eww/desktopwidgets`
# echo $DISKUSAGEFULL
MOUNTPOINT="/"
if [[ "$1" == "--ssd" ]]; then
	MOUNTPOINT="/home/sand/CrucialSSD"
elif [[ "$1" == "--nas" ]]; then
	MOUNTPOINT="/home/sand/truenas"	
fi

DISKUSAGE=`echo $DISKUSAGEFULL | jq -r ".[\"$MOUNTPOINT\"].[\"used_perc\"]"`
DISKUSAGEROUNDED=`echo $DISKUSAGE | awk '{print int($1+0.5)}'`
echo $DISKUSAGEROUNDED # %