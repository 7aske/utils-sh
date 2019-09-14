#!/bin/sh

if [ "$(id -u)" -ne 0 ]; then
	echo "Run as root"; exit 1;
fi

if grep -q closed /proc/acpi/button/lid/LID0/state; then
	systemctl suspend
fi
