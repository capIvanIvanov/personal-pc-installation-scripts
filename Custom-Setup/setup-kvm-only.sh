#!/bin/bash

echo "*************************************** !!! EXTREMELY IMPORTANT!!! ****************************************"
echo "*** Make sure \"Intel Virtualization Technology\" is enabled in Advanced -> CPU Configuration *************"
echo "*** Make sure \"Intel VT for Directed I/O (VT-d)\" is enabled in Advanced -> System Agent Configuration ***"
echo "***********************************************************************************************************"

read -p "Press <ENTER> to continue"

sudo apt-get -y install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager
sudo apt-get -y install net-tools ovmf

sudo adduser ivan libvirt
sudo adduser ivan libvirt-qemu


