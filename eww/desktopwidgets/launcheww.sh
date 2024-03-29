#!/bin/bash

configfile="/home/sand/Dropbox/linux/bars/eww/desktopwidgets/"
# eww daemon --config ./
# sleep 1
eww daemon --config $configfile
eww open clockwindow --config $configfile
eww open calendarwindow --config $configfile
eww open weatherwindow --config $configfile
eww open diskwindow --config $configfile
eww open suntimewindow --config $configfile
eww open infowindow --config $configfile
sleep 1
eww open appswindow --config $configfile
eww open appstabletwindow --config $configfile