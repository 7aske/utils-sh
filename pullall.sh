#!/usr/bin/env bash

git --version >/dev/null || exit 1
repos=(sh/utils-sh sh/dotfiles sh/bashrc sh/autosetup uni)

if [ "$1" == "-A" ]; then
    for lang in $(dir "$CODE"); do
        grep "$lang" "$CODE"/.codeignore && continue
        d="$CODE/$lang"
        for repo in $(dir "$d"); do
            echo "$repo"
            git -C "$d"/"$repo" pull 2>/dev/null | while read -r OUTPUT; do
                if command -v "notify-send" 1>/dev/null; then
                    notify-send "$repo" "$OUTPUT"
                else
                    echo "$repo" "$OUTPUT"
                fi
            done &
        done
    done
elif [ -z "$1" ]; then
    for repo in "${repos[@]}"; do
        echo "$repo" &&
            git -C "$CODE"/"$repo" pull 2>/dev/null | while read -r OUTPUT; do
                if command -v "notify-send" 1>/dev/null; then
                    notify-send "$repo" "$OUTPUT"
                else
                    echo "$repo" "$OUTPUT"
                fi
            done &
    done
fi
