#!/bin/sh

# start picom, sxhkd, xmonad, etc.
# set wallpaper, cursor size, etc.

picom --config ~/.config/picom/picom.conf &
sxhkd &
xsetroot -xcf /usr/share/icons/Adwaita/cursors/left_ptr 25
export XCURSOR_SIZE=30
xrdb .Xresources
hsetroot -solid "#e9d7ab"
xset s off -dpms
exec xmonad # dwm gtfo
