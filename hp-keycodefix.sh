sudo cp ./hp-keycodes.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable hp-keycodes.service
