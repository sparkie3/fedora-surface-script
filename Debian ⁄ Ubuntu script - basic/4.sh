#!/bin/bash
echo "calibration for surface"
echo "this is general calibration you can edit it later to fit your fingers"
cd /etc/
echo "create iptsd.d if not exist - if error it exist"
mkdir iptsd.d
cd /etc/iptsd.d/
echo "creating calibration file"
sudo touch 90-calibration.conf
echo" calibration data and insert it in the calibration file"
sudo echo "[Touchscreen]
Overshoot = 0.5
SizeMin = 0.325
SizeMax = 2.159
[Touchpad]
Overshoot = 0.5
[Contacts]
NeutralValue = 0
ActivationThreshold = 24
DeactivationThreshold = 20
SizeThresholdMin = 0.1
SizeThresholdMax = 0.5
PositionThresholdMax = 2
OrientationThresholdMin = 1
OrientationThresholdMax = 5
SizeMin = 0.1
SizeMax = 2.0
AspectMin = 0.521
AspectMax = 3.323
[Stylus]
TipDistance = 0
[DFT]
PositionMinAmp = 50
PositionMinMag = 2000
PositionExp = -0.7
ButtonMinMag = 1000
FreqMinMag = 10000"|sudo tee 90-calibration.conf
echo "confirming"
sudo cat 90-calibration.conf
echo "reboot - restart and test"
