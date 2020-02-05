#!/usr/bin/env sh
. "$HOME/.profile"
if [ -z "$CODE" ]; then
    echo "'CODE' env not set"
    exit 1
fi

for file in $(dir -1 "$CODE"); do
    for sub in $(dir -1 "$CODE/$file"); do
        if [ -d "$CODE/$file/$sub" ]; then
            if dir -1 -A "$CODE/$file/$sub" | grep -q ".git"; then
                echo "$CODE/$file/$sub"
            fi
        fi
    done
done
