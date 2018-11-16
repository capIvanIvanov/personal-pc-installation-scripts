#!/bin/bash

read -n1 -rsp "Preass <c> to start the script or <any other key> to quit and check for newer version of AnyDesk" result

if [ $result = 'c' ]; then
	printf "\nContunuing...\n"
else
	printf "\nExiting...\n"
	exit 0
fi

read -n1 -rsp "Preass <c> to install VMware Player or <any other key> to skip" result

if [ $result = 'c' ]; then
	printf "\nInstalling...\n"
	sudo apt-get -y install gcc-8 g++-8
	cd ~/Downloads
	wget -c https://www.vmware.com/go/getplayer-linux
	chmod u+x getplayer-linux
	sudo ./getplayer-linux
else
	printf "\nSkipped.\n"
fi

read -n1 -rsp "Preass <c> to install AnyDesk or <any other key> to skip" result

if [ $result = 'c' ]; then
	printf "\nInstalling...\n"
	cd ~/Downloads
	wget https://download.anydesk.com/linux/anydesk_4.0.1-1_amd64.deb
	sudo qapt-deb-installer anydesk_4.0.1-1_amd64.deb
else
	printf "\nSkipped.\n"
fi

read -n1 -rsp "Preass <c> to install Viber or <any other key> to skip" result

if [ $result = 'c' ]; then
	printf "\nInstalling...\n"
	cd ~/Downloads
	wget -O ./viber.deb http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
	dpkg-deb -x viber.deb viber
	dpkg-deb --control viber.deb viber/DEBIAN
	sed -i 's/libcurl3/libcurl4/' viber/DEBIAN/control 
	dpkg -b viber vibernew.deb
	sudo dpkg -i vibernew.deb
else
	printf "\nSkipped.\n"
fi

read -n1 -rsp "Preass <c> to install foobar2000 or <any other key> to skip" result

if [ $result = 'c' ]; then
	printf "\nInstalling...\n"
	cd ~/Install-Sets/Programs/foobar2000
	wine foobar2000_v1.4.exe
else
	printf "\nSkipped.\n"
fi
