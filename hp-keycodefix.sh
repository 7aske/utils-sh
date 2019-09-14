#!/bin/sh

if [ "$(id -u)" -ne 0 ]; then
    echo "Run as root"; exit 1;
fi

cp ./hp-keycodes.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable hp-keycodes.service
