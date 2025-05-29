#!/bin/bash
echo "This is a bug in APT, which mangles certain redirect URLs issued by GitHub's CDN. The easiest solution is for you to update your distribution to a newer release. Anything based on Ubuntu 21.04 and above (or comparable Debian versions) should work."
sudo add-apt-repository ppa:gpxbv/apt-urlfix
sudo apt-get update

sudo apt install apt

echo "just incase"
sudo apt install apt apt-utils
sudo apt update --fix-missing
sudo apt upgrade
