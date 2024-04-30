#!/bin/bash

configfile="/home/sand/Dropbox/linux/bars/eww/desktopwidgets/"
# eww daemon --config ./
# sleep 1
eww daemon --config $configfile
sleep 0.1
eww open clockwindow --config $configfile
sleep 0.1
eww open calendarwindow --config $configfile
sleep 0.1
eww open weatherwindow --config $configfile
sleep 0.1
eww open diskwindow --config $configfile
sleep 0.1
eww open suntimewindow --config $configfile
sleep 0.1
eww open infowindow --config $configfile
sleep 0.1
eww open appswindow --config $configfile
sleep 0.1
eww open appstabletwindow --config $configfile
sleep 0.1
eww open barwindow --config $configfile
