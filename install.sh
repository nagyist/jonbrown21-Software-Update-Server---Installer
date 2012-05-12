#!/bin/bash

read -p "What would you like to do (install/uninstall)? "

[ "$REPLY" != "install" ] || exec /SUS-Installer/src/install.sh
[ "$REPLY" != "uninstall" ] || exec /SUS-Installer/src/uninstall.sh
 
