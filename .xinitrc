picom --config ~/.config/picom/picom.conf &
sxhkd &
xsetroot -xcf /usr/share/icons/Adwaita/cursors/left_ptr 25
export XCURSOR_SIZE=30
xrdb .Xresources
hsetroot -solid "#D1BEA8"
xset s off -dpms
exec xmonad
