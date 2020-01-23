#!/usr/bin/env sh

repo=$1

set src
set dest

if [ "$2" = "-s" ]; then
	src="$3":"$CODE"/"$repo"
	dest="$CODE"/"$repo"
elif [ "$2" = "-d" ]; then
	src="$CODE"/"$repo"
	dest="$3":"$CODE"/"$repo"
else
	echo "Invalid second argument."
	exit 1
fi

rsync --progress -have ssh "$src" "$(dirname "$dest")"
