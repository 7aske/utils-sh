#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"; exit 1
fi

declare freq

if [ "$1" == "min" ]
then
    freq=$(cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq)
elif [ "$1" == "base" ]
then
    freq=$(cat /sys/devices/system/cpu/cpu0/cpufreq/base_frequency)
else
    freq=$(cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq)
fi
if [ -n "$freq" ]
then
    for file in /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq; do echo "$freq" > "$file"; done
    echo "$freq" MHz
fi

