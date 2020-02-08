#!/usr/bin/env sh

pkill pulseaudio
pkill pasystray

pulseaudio -D >/dev/null 2>&1
(pasystray &) >/dev/null 2>&1
