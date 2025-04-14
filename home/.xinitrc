#!/bin/sh
xrandr -s 1920x1080

xsuspender &

feh --bg-fill $HOME/ims/wallpaper

slstatus 2>&1 >/dev/null &

while true; do
    dwm 2> ~/.dwm.log
done
