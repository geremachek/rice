#!/bin/sh

# start picom, sxhkd, windowmaker, etc.
# set wallpaper, cursor size, etc.

picom -b --config ~/.config/picom/picom.conf &
sxhkd &
fontsrv &
plumber &

xsetroot -cursor_name left_ptr

xrdb .Xresources
xset s off -dpms

setxkbmap -layout us,gr -option grp:lswitch

# remap caps lock to escape

xmodmap -e "clear lock"
xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"

rm ~/acme.dump

exec wmaker
