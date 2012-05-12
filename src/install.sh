#!/bin/bash

echo "Starting the install process"

sudo cp /SUS-Installer/src/mod_hosts/hosts /etc

echo -n "What OS Version is this (Tiger, Leopard, Snow, Lion)? "

read -e OS

if [ "$OS" = "Tiger" ]; then

sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CatalogURL http://your.softwareupdateserver.com:8088/index.sucatalog

echo "Install Complete!"

fi

if [ "$OS" = "Leopard" ]; then

sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CatalogURL http://your.softwareupdateserver.com:8088/index-leopard.merged-1.sucatalog

echo "Install Complete!"

fi

if [ "$OS" = "Snow" ]; then

sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CatalogURL http://your.softwareupdateserver.com:8088/index-leopard-snowleopard.merged-1.sucatalog

echo "Install Complete!"

fi

if [ "$OS" = "Lion" ]; then

sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CatalogURL http://your.softwareupdateserver.com:8088/index-lion-snowleopard-leopard.merged-1.sucatalog

echo "Install Complete!"

fi