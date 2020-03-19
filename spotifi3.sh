#!/usr/bin/env bash
pgrep spotify
if [ $? -eq 0 ]; then
    i3-msg "[class=(?i)spotify] move container to workspace current floating enable focus"
else
    i3-msg "exec --no-startup-id spotify"
    sleep 1
    i3-msg "[class=(?i)spotify] floating enable focus"
fi

