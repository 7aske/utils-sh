#!/usr/bin/env sh

pkill pulseaudio
pkill pa-applet

pulseaudio -D &> /dev/null
pa-applet & &> /dev/null
