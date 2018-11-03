#!/bin/bash

read -p "Press <ENTER> to start the script or stop it and check for newer version of AnyDesk"

# Install VMware player...
read -p "Press <ENTER> to install VMWare Player"
sudo apt-get -y install gcc-8 g++-8
cd ~/Downloads
wget -c https://www.vmware.com/go/getplayer-linux
chmod u+x getplayer-linux
sudo ./getplayer-linux

read -p "Press <ENTER> to install AnyDesk (Check for newer version)"
cd ~/Downloads
wget https://download.anydesk.com/linux/anydesk_4.0.0-1_amd64.deb
sudo dpkg -i anydesk_4.0.0-1_amd64.deb

read -p "Press <ENTER> to install Viber"
cd ~/Downloads
wget -O ./viber.deb http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
dpkg-deb -x viber.deb viber
dpkg-deb --control viber.deb viber/DEBIAN
sed -i 's/libcurl3/libcurl4/' viber/DEBIAN/control 
dpkg -b viber vibernew.deb
sudo dpkg -i vibernew.deb

read -p "Press <ENTER> to install foobar2000"
cd ~/Install-Sets/Programs/foobar2000
wine foobar2000_v1.4.exe
