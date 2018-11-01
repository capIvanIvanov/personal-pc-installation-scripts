#!/bin/bash

sudo apt-get update
sudo apt-get -y install nfs-kernel-server nfs-common

#sudo su -c "echo '/home/ivan/Documents 192.168.1.143(ro,sync,wdelay)' >> /etc/exports"
#sudo su -c "echo '/home/ivan/Storage 192.168.1.143(ro,sync,wdelay)' >> /etc/exports"
#sudo su -c "echo '/home/ivan/Install-Sets 192.168.1.143(ro,sync,wdelay)' >> /etc/exports"

mkdir /home/ivan/Server
mkdir /home/ivan/Server/Documents
mkdir /home/ivan/Server/Storage
mkdir /home/ivan/Server/Storage-2


sudo su -c "echo '#Mount Packard-Bell.s Documents on ~/Server/Documents' >> /etc/fstab"
sudo su -c "echo '192.168.1.146:/home/ivan/Documents        /home/ivan/Server/Documents	nfs	defaults	0	2' >> /etc/fstab"

sudo su -c "echo '#Mount Packard-Bell.s Storage on ~/Server/Storage' >> /etc/fstab"
sudo su -c "echo '192.168.1.146:/home/ivan/Storage          /home/ivan/Server/Storage	nfs	defaults	0	2' >> /etc/fstab"

sudo su -c "echo '#Mount Packard-Bell.s Storage-2 on ~/Server/Storage-2' >> /etc/fstab"
sudo su -c "echo '192.168.1.146:/home/ivan/Storage-2        /home/ivan/Server/Storage-2	nfs	defaults	0	2' >> /etc/fstab"
