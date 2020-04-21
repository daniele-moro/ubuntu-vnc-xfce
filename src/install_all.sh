#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

### Install some common tools
$INST_SCRIPTS/tools.sh

### Install custom fonts
$INST_SCRIPTS/install_custom_fonts.sh

### Install xvnc-server & noVNC - HTML5 based VNC viewer
$INST_SCRIPTS/tigervnc.sh
$INST_SCRIPTS/no_vnc.sh

### Install firefox and chrome browser
$INST_SCRIPTS/chrome.sh

### Install xfce UI
$INST_SCRIPTS/xfce_ui.sh

### configure startup
$INST_SCRIPTS/libnss_wrapper.sh
$INST_SCRIPTS/set_user_permission.sh $STARTUPDIR $HOME

# Clean-up
apt-get autoremove -y
apt-get clean -y
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
rm -rf /headless/install
