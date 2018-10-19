
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.14-trusty/linux-headers-3.14.0-031400_3.14.0-031400.201403310035_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.14-trusty/linux-headers-3.14.0-031400-generic_3.14.0-031400.201403310035_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.14-trusty/linux-image-3.14.0-031400-generic_3.14.0-031400.201403310035_amd64.deb
sudo dpkg -i linux-headers-3.14.0-*.deb linux-image-3.14.0-*.deb
sudo reboot
