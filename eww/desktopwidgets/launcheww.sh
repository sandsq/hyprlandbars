#!/bin/bash

configfile="/home/sand/Dropbox/linux/bars/eww/desktopwidgets/"
# eww daemon --config ./
# sleep 1
sleep 0.5 && eww open clockwindow --config $configfile
sleep 0.5 && eww open calendarwindow --config $configfile
sleep 0.5 && eww open appswindow --config $configfile
sleep 0.5 && eww open appstabletwindow --config $configfile
sleep 0.5 && eww open weatherwindow --config $configfile
sleep 0.5 && eww open diskwindow --config $configfile
sleep 0.5 && eww open suntimewindow --config $configfile