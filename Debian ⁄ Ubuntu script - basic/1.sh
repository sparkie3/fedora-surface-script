#!/bin/bash
echo "update your system"
sudo apt update && sudo apt upgrade
echo "import the keys we use to sign packages"
wget -qO - https://raw.githubusercontent.com/linux-surface/linux-surface/master/pkg/keys/surface.asc \
    | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/linux-surface.gpg

echo "adding repository"

echo "deb [arch=amd64] https://pkg.surfacelinux.com/debian release main" \
	| sudo tee /etc/apt/sources.list.d/linux-surface.list
echo "update the repository"
sudo apt update
echo "if there were no error messages continue to ./2.sh
if not such as (Error 401 Unauthorized) go to ./p1.sh"
