#!/bin/sh

# start picom, sxhkd, xmonad, etc.
# set wallpaper, cursor size, etc.

picom --config ~/.config/picom/picom.conf &
sxhkd &

xsetroot -xcf /usr/share/icons/Adwaita/cursors/left_ptr 25
export XCURSOR_SIZE=30

xrdb .Xresources
hsetroot -solid "#777777"
xset s off -dpms

setxkbmap -layout us,apl -variant ,dyalog -option grp:lswitch

exec xmonad # dwm gtfo
