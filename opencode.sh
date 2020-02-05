#!/usr/bin/env sh
. "$HOME/.profile"
if [ -z "$CODE" ]; then
    echo "'CODE' env not set"
    exit 1
fi

if [ -x "$(command -v vscodium)" ]; then
    CMD=vscodium
elif [ -x "$(command -v code-insiders)" ]; then
    CMD=code-insiders
elif [ -x "$(command -v code)" ]; then
    CMD=code
else
    echo "VS Code not found"
    [ -x "$(command -v notify-send)" ] && notify-send "Opencode" "VS Code not found"
    exit 1
fi
PROJ="$("$CODE/sh/utils-sh/lscode.sh" | fzf)"
if [ -n "$PROJ" ]; then
    $CMD "$PROJ"
fi
