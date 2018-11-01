#!/bin/bash

# Disable Nouveau driver
# Note: That's redundant. The little hardware detection thingy is missbehaving!
# To see which driver is active:
# sudo lshw -c video
# sudo modinfo <driver>
#
#sudo su -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
#sudo su -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
#cat /etc/modprobe.d/blacklist-nvidia-nouveau.conf
#sudo update-initramfs -u

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get -y update
sudo apt-get -y upgrade
#sudo apt-get install xorg-dev
apt-cache search nvidia-driver

#sudo lshw -c display
#echo " "
#echo " -------------- AVAILABLE DRIVERS -------------- "
#echo " "
#sudo ubuntu-drivers devices

#read -p "Press <ENTER> to continue"

#sudo ubuntu-drivers autoinstall
