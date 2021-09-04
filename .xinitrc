#!/bin/sh

xrdb .Xresources
xset r rate 200 40 -b -dpms s off
hsetroot -center wallpapers/purple.jpg -brightness -0.08 -contrast 1.1 -gamma 1.7

echo "ru" > ~/.bin/kbd_layout/current-state
~/.bin/kbd_layout/change

sudo ~/.bin/trackpoint/speed-sens 100 240
mpc load fleur; mpc volume 80; mpc random on; mpc next
xbindkeys
dunst &
flameshot &
unclutter --ignore-scrolling -idle 1.4 -jitter 7 &
picom &
#exec urxvt &
exec i3 
