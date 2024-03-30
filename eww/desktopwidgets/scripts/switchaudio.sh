#!/bin/bash


if [[ "$1" == "up" ]]; then
	pamixer -i 2
elif [[ "$1" == "down" ]]; then
	pamixer -d 2
else
	currenticon=""
	othericon=""

	statustext="$(wpctl status)"
	relevantsinks=`echo "$statustext" | grep Sinks -A 2 | grep -v Sinks | head -n 2`
	# echo "$relevantsinks"
	unusedsinkfull=`echo "$relevantsinks" | grep -v "\*"` 
	# echo $unusedsinkfull
	if [[ $unusedsinkfull =~ "Yeti" ]]; then
		currenticon=""
		othericon=""
	else
		currenticon=""
		othericon=""
	fi
	echo $currenticon
	if [[ $1 == "--icon" ]]; then
		exit 0
	fi
	unusedsink=`echo $unusedsinkfull | cut -d . -f1 | grep -o -E "[0-9]+"`
	# echo $unusedsink
	wpctl set-default $unusedsink
	eww update AUDIOICON=$othericon --config $HOME/Dropbox/linux/bars/eww/desktopwidgets/
fi


eww update AUDIOPERC=$( pamixer --get-volume ) --config $HOME/Dropbox/linux/bars/eww/desktopwidgets/
