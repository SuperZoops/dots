#! /bin/bash

CURRENT_LAYOUT=$(setxkbmap -query|awk -F : 'NR==3{print $2}'|sed 's/ //g')

if [ "$CURRENT_LAYOUT" = "us" ]; then
	setxkbmap "cz(rus)"
elif [ "$CURRENT_LAYOUT" = "cz(rus)" ]; then
	setxkbmap "fr(us)"
elif [ "$CURRENT_LAYOUT" = "fr(us)" ]; then
	setxkbmap "fi(nodeadkeys)"
elif [ "$CURRENT_LAYOUT" = "fi(nodeadkeys)" ]; then 
	setxkbmap "us"
fi

setxkbmap -option caps:swapescape
