#!/bin/bash
echo "calibration for surface"
echo "this is general calibration you can edit it later to fit your fingers"
cd /etc/
echo "create iptsd.d if not exist - if error it exist"
mkdir iptsd.d
cd /etc/iptsd.d/
echo "creating calibration file"
sudo touch 90-calibration.conf
echo "calibration data and insert it in the calibration file"
sudo echo "[Contacts]
SizeMin = 0.325
SizeMax = 2.159
AspectMin = 0.521
AspectMax = 3.323
ActivationThreshold = 24
DeactivationThreshold = 20
OrientationThresholdMax = 5"|sudo tee 90-calibration.conf
echo "confirming"
sudo cat 90-calibration.conf
echo "reboot - restart and test"
