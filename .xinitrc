#!/bin/sh

# start picom, sxhkd, xmonad, etc.
# set wallpaper, cursor size, etc.

picom --config ~/.config/picom/picom.conf &
sxhkd &

xsetroot -xcf /usr/share/icons/Adwaita/cursors/left_ptr 25
export XCURSOR_SIZE=30

xrdb .Xresources
hsetroot -solid "#d2bfaa"
xset s off -dpms

setxkbmap -layout us,gr -option grp:lswitch

# remap caps lock to escape

xmodmap -e "clear lock"
xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"

exec xmonad # dwm gtfo
