#!/bin/bash
sudo apt update
echo "installing surface project"
sudo apt install linux-image-surface linux-headers-surface libwacom-surface iptsd
echo "install surfaceboot"
sudo apt install linux-surface-secureboot-mok
echo "IMPORTANT
IMPORTANT
READ
it will ask you to reboot. Then, upon reboot, a blue menu (MokManager) should pop up, asking you whether you want to enroll the key. You need to interact with the menu and select "Enroll" to proceed. Confirm with ok/yes and when asked for a password enter surface.
in short reboot/ restart
blue screen
Ok/Yes
password
Surface"
