#!/bin/bash

sudo apt-get update
sudo apt-get -y install nfs-kernel-server nfs-common

sudo su -c "echo '/home/ivan/Documents 192.168.1.143(rw,sync,wdelay)' >> /etc/exports"
sudo su -c "echo '/home/ivan/Storage 192.168.1.143(rw,sync,wdelay)' >> /etc/exports"
sudo su -c "echo '/home/ivan/Storage-2 192.168.1.143(rw,sync,wdelay)' >> /etc/exports"
