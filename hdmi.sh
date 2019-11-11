#!/usr/bin/env sh

mode="same-as"

if [ ! -z "$2" ]; then
    mode="$2"
fi

if [ "$1" == "on" ]; then
    xrandr --output eDP --auto --output HDMI-A-0 --auto --"$mode" eDP
elif [ "$1" == "off" ]; then
    xrandr --output HDMI-A-0 --off
fi
