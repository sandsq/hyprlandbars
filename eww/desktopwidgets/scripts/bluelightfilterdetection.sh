#!/bin/bash
filteroncolor="#CF5A2A"
filteroffcolor="#003e7d"
# filteroffcolor="#2e87e2"
iconcolor=$filteroffcolor
othericoncolor=$filteroncolor
shadestate=`hyprshade current`
togglecommand="auto"

# set icon color based on if hyprshade is auto or off, not whether the bluelight filter is on or off. Vibrance is the shader during the day if hyprshade is auto, while a blank shader is present if hyprshade is off.
if [[ $shadestate == "blue-light-filter-3000" || $shadestate == "blue-light-filter-3500" || $shadestate == "blue-light-filter-4000" || $shadestate == "blue-light-filter-4500" || $shadestate == "blue-light-filter-5000" || $shadestate == "blue-light-filter-5500" || $shadestate == "vibrance" ]]; then
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