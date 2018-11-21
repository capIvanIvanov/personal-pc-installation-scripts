#!/bin/bash

cd ~/Downloads
wget -c http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.19.2/linux-headers-4.19.2-041902_4.19.2-041902.201811132032_all.deb
wget -c http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.19.2/linux-headers-4.19.2-041902-generic_4.19.2-041902.201811132032_amd64.deb
wget -c http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.19.2/linux-image-unsigned-4.19.2-041902-generic_4.19.2-041902.201811132032_amd64.deb
wget -c http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.19.2/linux-modules-4.19.2-041902-generic_4.19.2-041902.201811132032_amd64.deb

sudo dpkg -i *.deb
