#!/bin/bash
echo
sleep 1
echo -e $YELLOW"--->Enabling $APPTITLE Autostart at Boot..."$ENDCOLOR
sudo cp "$APPSYSTEMDLOC" /etc/systemd/system/$APPSYSTEMD || { echo -e $RED'Creating systemd file failed.'$ENDCOLOR ; exit 1; }
sudo chmod 644 /etc/systemd/system/$APPSYSTEMD
sudo systemctl enable $APPSYSTEMD
echo "$APPSYSTEMD SystemD script added and enabled"
