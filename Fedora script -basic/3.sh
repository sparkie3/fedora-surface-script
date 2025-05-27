#!/bin/bash
echo "turning surface kernel into defult kernal"
sudo systemctl enable --now linux-surface-default-watchdog.path
sudo systemd enable --now linux-surface-default-watchdog.path
sudo linux-surface-default-watchdog.py
echo "Finally, reboot your system and you should boot into the linux-surface kernel. Please make sure you are actually using the right kernel by checking if the output of uname -a contains the string surface. If it doesn't contain that string, you are still using the default kernel."
