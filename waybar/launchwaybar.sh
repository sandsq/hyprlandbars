#!/bin/bash

CONFIG_FILES="$HOME/.config/waybar/config $HOME/.config/waybar/style.scss"

trap "killall waybar" EXIT

while true; do
    grass $HOME/.config/waybar/style.scss $HOME/.config/waybar/style.css
    waybar &
    inotifywait -e create,modify $CONFIG_FILES
    killall waybar
done