#!/usr/bin/env sh

output="Virtual-1"
height="1080"
width="1920"
modename=""$width"x"$height""
modeline="$(gtf 1920 1080 60 | grep 'Modeline ' | awk '{$1 = ""; $2 =""; print $0}')"

echo "$modename$modeline"

echo "$modename$modeline" | xargs xrandr --newmode && echo "Added $modename"

xrandr --addmode "$output" "$modename" && echo "Added $modename to $output"

xrandr --output "$output" --mode "$modename" && echo "Setting resolution of $output to $modename"

