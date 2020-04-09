#! /bin/bash

UDEV_RULES_PATH="/etc/udev/rules.d/"
RULES_FILE="51-android.rules"
sudo cp $RULES_FILE $UDEV_RULES_PATH
sudo systemctl restart systemd-udevd.service
sudo systemctl restart systemd-udev-trigger.service
