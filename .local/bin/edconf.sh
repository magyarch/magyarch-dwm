#!/bin/sh



# Dmenu script for editing some of my more frequently edited config files.


declare options=("alacritty
alias
bash
dwm
profile
vifm
slstatus
sxhkd
xprofile
quit")

choice=$(echo -e "${options[@]}" | dmenu -p 'Edit config files: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
        alacritty)
		choice="$HOME/.config/alacritty/alacritty.yml"
	;;
	alias)
		choice="$HOME/.config/aliasrc"
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	dwm)
		choice="$HOME/.config/suckless/dwm/config.def.h"
	;;
	profile)
		choice="$HOME/.profile"
	;;
	vifm)
		choice="$HOME/.config/vifm/vifmrc"
	;;
	slstatus)
		choice="$HOME/.config/suckless/slstatus/config.def.h"
	;;
	sxhkd)
		choice="$HOME/.config/sxhkd/sxhkdrc"
	;;
	xprofile)
		choice="$HOME/.xprofile"
	;;
	*)
		exit 1
	;;
esac
subl -c "$choice"
