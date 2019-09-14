#!/bin/sh

status=$(acpi | awk '{print $3}' | cut -d ',' -f1)

if [ "Discharging" = "$status" ] 
then
    "$HOME"/Code/sh/utils-sh/cpuf.sh base
else 
    "$HOME"/Code/sh/utils-sh/cpuf.sh    
fi