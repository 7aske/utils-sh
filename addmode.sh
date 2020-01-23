#!/usr/bin/env sh

output="Virtual-1"


modeline="$(gtf 1920 1080 60 | grep 'Modeline ' | awk '{$1 = ""; print $0}')"
echo "$modeline" | xargs xrandr --newmode
xrandr --addmode "$output" "$(echo "$modeline" | awk '{print $1}')"
xrandr --output "$output" --mode "$(echo "$modeline" | awk '{print $1}')"

