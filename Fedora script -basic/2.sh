#!/bin/bash
echo "add the repository"
sudo dnf config-manager \
    --add-repo=https://pkg.surfacelinux.com/fedora/linux-surface.repo

echo "dnf5 command just in case"

sudo dnf config-manager \
    addrepo --from-repofile=https://pkg.surfacelinux.com/fedora/linux-surface.repo

echo "install the linux-surface kernel and its dependencies"

sudo dnf install surface-secureboot

echo "follow the instructions or you will have to uninstall and repeat"
echo "it will ask you to reboot. Then, upon reboot, a blue menu should pop up, asking you whether you want to enroll the key. Confirm with ok/yes and when asked for a password enter surface. In case you missed the menu or accidentally chose the wrong options, you can uninstall (fully) and then reinstall the package and reboot to trigger the menu again"
echo "again Reboot - then OK - then the password is surface"
echo "again Reboot - then OK - then the password is surface"
echo "again Reboot - then OK - then the password is surface"
