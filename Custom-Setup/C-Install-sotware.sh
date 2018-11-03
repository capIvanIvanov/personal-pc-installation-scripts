#!/bin/bash

# Install VMware player...
read -p "Press <ENTER> to install VMWare Player"
sudo apt-get -y install gcc-8 g++-8
wget -c https://www.vmware.com/go/getplayer-linux
chmod u+x getplayer-linux
sudo ./getplayer-linux

read -p "Press <ENTER> to install foobar2000"
cd /home/ivan/Install-Sets/Programs/foobar2000
wine foobar2000_v1.4.exe

read -p "Press <ENTER> to continue"

#cd ...
