#!/bin/bash
statustext="$(wpctl status)"
relevantsinks=`echo "$statustext" | grep Sinks -A 2 | grep -v Sinks | head -n 2`
# echo "$relevantsinks"
unusedsink=`echo "$relevantsinks" | grep -v "\*" | cut -d . -f1 | grep -o -E "[0-9]+"`
# echo $unusedsink
wpctl set-default $unusedsink

