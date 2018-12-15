#!/usr/bin/sh

if grep -q closed /proc/acpi/button/lid/LID0/state; then
	sudo systemctl suspend
fi
