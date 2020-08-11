picom &
xsetroot -xcf /usr/share/icons/Adwaita/cursors/left_ptr 6
sxhkd -c /home/gmk/.config/sxhkd/sxhkdrc &
xrdb .Xresources
hsetroot -solid "#777777"
exec xmonad
