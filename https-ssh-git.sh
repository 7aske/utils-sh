#!/usr/bin/env sh
remote="$(git remote -v | grep -v "git@" | grep push | awk '{print $2}' | awk -F '/' '{print  "git@"$3":"$4"/"$5}')"

if [ ! -z "$remote" ]; then
    git remote set-url origin "$remote" 
fi