#!/bin/bash

echo "*************************************** !!! EXTREMELY IMPORTANT!!! ****************************************"
echo "*** Make sure \"Intel Virtualization Technology\" is enabled in Advanced -> CPU Configuration *************"
echo "*** Make sure \"Intel VT for Directed I/O (VT-d)\" is enabled in Advanced -> System Agent Configuration ***"
echo "***********************************************************************************************************"

read -p "Press <ENTER> to continue"

sudo apt-get -y install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager
sudo apt-get -y install net-tools ovmf

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

# !!! SETUP GPU PASSTHROUGH !!!

#05:00.0 VGA compatible controller [0300]: NVIDIA Corporation GM204 [GeForce GTX 980] [10de:13c0] (rev a1)
#05:00.1 Audio device [0403]: NVIDIA Corporation GM204 High Definition Audio Controller [10de:0fbb] (rev a1)

#0b:00.0 VGA compatible controller [0300]: Advanced Micro Devices, Inc. [AMD/ATI] R700 [Radeon HD 4850 X2] [1002:9443]
#0b:00.1 Audio device [0403]: Advanced Micro Devices, Inc. [AMD/ATI] RV770 HDMI Audio [Radeon HD 4850/4870] [1002:aa30]
#0c:00.0 Display controller [0380]: Advanced Micro Devices, Inc. [AMD/ATI] R700 [Radeon HD 4850 X2] [1002:9443]
#0c:00.1 Audio device [0403]: Advanced Micro Devices, Inc. [AMD/ATI] RV770 HDMI Audio [Radeon HD 4850/4870] [1002:aa30]

sudo su -c "touch /etc/modprobe.d/blacklist-nvidia.conf"
sudo su -c "echo 'blacklist nvidia' >> /etc/modprobe.d/blacklist-nvidia.conf"
sudo su -c "echo 'options nvidia modeset=0' >> /etc/modprobe.d/blacklist-nvidia.conf"

sudo sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="intel_iommu=on"/' /etc/default/grub
#sudo sed -i 's/GRUB_CMDLINE_LINUX="intel_iommu=on"/GRUB_CMDLINE_LINUX="intel_iommu=on vfio-pci.ids=1002:9443,1002:aa30"/' /etc/default/grub
sudo su -c "update-grub2"

sudo su -c "touch /etc/modprobe.d/vfio.conf"
sudo su -c "echo 'options vfio-pci ids=10de:13c0,10de:0fbb' >> /etc/modprobe.d/vfio.conf"
sudo su -c "sudo echo 'vfio-pci' > /etc/modules-load.d/vfio-pci.conf"

#sudo su -c "echo vfio >> /etc/modules"
#sudo su -c "echo vfio_iommu_type 1 >> /etc/modules"
#sudo su -c "echo vfio_pci >> /etc/modules"
#sudo su -c "echo vfio_virqfd >> /etc/modules"
sudo su -c "update-initramfs -u"


