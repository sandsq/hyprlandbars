#!/bin/bash
filteroncolor="#7d2b00"
filteroffcolor="#003e7d"
iconcolor=$filteroffcolor
othericoncolor=$filteroncolor
shadestate=`hyprshade current`
togglecommand="auto"

# set icon color based on if hyprshade is auto or off, not whether the bluelight filter is on or off. Vibrance is the shader during the day if hyprshade is auto, while a blank shader is present if hyprshade is off.
if [[ $shadestate == "blue-light-filter" || $shadestate == "vibrance" ]]; then
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