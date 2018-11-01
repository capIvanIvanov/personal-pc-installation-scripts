#!/bin/bash

wget -nc https://dl.winehq.org/wine-builds/Release.key && sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/

read -p "Press <ENTER> to continue"

sudo apt-get -y update
sudo apt-get -y install --install-recommends winehq-devel winetricks winbind
