
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.13.7-trusty/linux-headers-3.13.7-031307_3.13.7-031307.201403240156_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.13.7-trusty/linux-headers-3.13.7-031307-generic_3.13.7-031307.201403240156_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.13.7-trusty/linux-image-3.13.7-031307-generic_3.13.7-031307.201403240156_amd64.deb
sudo dpkg -i linux-headers-3.13.7-*.deb linux-image-3.13.7-*.deb
sudo reboot