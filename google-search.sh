#!/bin/sh
search=$(rofi -dmenu -p Search:)
if [ ! -z "$search" ]; then
    exo-open --launch WebBrowser "https://www.google.com/search?q=$search"
fi
