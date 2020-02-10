#!/usr/bin/env sh
. "$HOME/.profile"

if [ -z "$CODE" ]; then
    echo "'CODE' env not set"
    exit 1
fi

if [ -n "$ROFI" ]; then
    PROJ="$("$CODE/sh/utils-sh/lscode.sh" | rofi -dmenu)"
else
    PROJ="$("$CODE/sh/utils-sh/lscode.sh" | fzf)"
fi

if [ -n "$PROJ" ]; then
    case "$TYPE" in
    "term")
        $TERMINAL -cd "$PROJ"
        ;;

    "vscode")
        if [ -x "$(command -v vscodium)" ]; then
            CMD=vscodium
        elif [ -x "$(command -v code-insiders)" ]; then
            CMD=code-insiders
        elif [ -x "$(command -v code)" ]; then
            CMD=code
        else
            echo "vscodium: not found"
            echo "code-insiders: not found"
            echo "code: not found"
            [ -x "$(command -v notify-send)" ] && notify-send "Opencode" "vscodium: not found\ncode-insiders: not found\ncode: not found"
            exit 1
        fi
        $CMD "$PROJ"
        ;;
    *)
        echo "'TYPE' env not set"
        exit 1
        ;;

    esac
fi
