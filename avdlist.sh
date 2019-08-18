#!/bin/sh

dir="$HOME/.android/avd/"

for dir in $(find $dir -maxdepth 1 -name *.ini)
do
basename $dir .ini
done