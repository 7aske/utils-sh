#!/usr/bin/env bash

langs="us\nrs-lat\nrs"

lang=$(echo -e $langs | dmenu)

case $lang in
    rs)
        setxkbmap -layout rs;;
    rs-lat)
        setxkbmap -layout rs -variant latin;;
    us)
        setxkbmap -layout us;;
esac
