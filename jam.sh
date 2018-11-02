#!/bin/bash
sudo timeout 5 airodump-ng -w my --output-format csv --write-interval 1   wlp0s18f2u2mon 
#cat output.txt
#sudo airodump-ng wlp0s18f2u2mon 2>&1 | grep BSSID