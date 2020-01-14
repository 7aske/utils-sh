#!/usr/bin/env sh

pkill pulseaudio
pkill pa-applet

pulseaudio -D >/dev/null 2>&1
(pa-applet &) >/dev/null 2>&1
