#!/bin/bash
filteroncolor="#7d2b00"
filteroffcolor="#003e7d"
iconcolor=$filteroffcolor
othericoncolor=$filteroncolor
shadestate=`hyprshade current`
togglecommand="auto"

if [[ "$shadestate" == "blue-light-filter" ]]; then
	iconcolor=$filteroncolor
	othericoncolor=$filteroffcolor
	togglecommand="off"
fi


if [[ "$1" == "--getcolor" ]]; then
	echo $iconcolor	
elif [[ "$1" == "--toggle" ]]; then
	hyprshade $togglecommand
	eww update filterindicator=$othericoncolor --config /home/sand/Dropbox/linux/bars/eww/desktopwidgets/
fi