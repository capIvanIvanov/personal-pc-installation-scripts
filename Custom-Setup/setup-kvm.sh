#!/bin/bash
 
sudo apt-get -y install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager
sudo apt-get -y install net-tools

#sudo su -c "echo '# interfaces(5) file used by ifup(8) and ifdown(8)' >  /etc/network/interfaces" # On purpose! We want to erase the whole file!
#sudo su -c "echo 'auto lo br0'                                        >> /etc/network/interfaces"
#sudo su -c "echo 'iface lo inet loopback'                             >> /etc/network/interfaces"
#sudo su -c "echo '	'                                                 >> /etc/network/interfaces"
#sudo su -c "echo 'iface eno1 inet manual'                             >> /etc/network/interfaces"
#sudo su -c "echo '	'                                                 >> /etc/network/interfaces"
#sudo su -c "echo 'iface br0 inet dhcp'                                >> /etc/network/interfaces"
#sudo su -c "echo '	bridge_ports eno1'                                >> /etc/network/interfaces"

sudo adduser ivan libvirt
sudo adduser ivan libvirt-qemu
