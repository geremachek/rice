picom --config ~/.config/picom/picom.conf &
sxhkd &
xsetroot -xcf /usr/share/icons/Adwaita/cursors/left_ptr 30
export XCURSOR_SIZE=30
xrdb .Xresources
hsetroot -fill ~/pics/border-ruin.png
xset s off -dpms
#xrandr --output DP-1 --mode 2560x1440
exec xmonad
