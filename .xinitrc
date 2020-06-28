hsetroot -fill /home/gmk/.w.png
picom &
xsetroot -xcf /usr/share/icons/Adwaita/cursors/left_ptr 6
sxhkd -c /home/gmk/.config/sxhkd/sxhkdrc &
wal -R
exec xmonad
