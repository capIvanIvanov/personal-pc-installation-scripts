#!/bin/bash

echo "*************************************** !!! EXTREMELY IMPORTANT!!! ****************************************"
echo "*** Make sure \"Intel Virtualization Technology\" is enabled in Advanced -> CPU Configuration *************"
echo "*** Make sure \"Intel VT for Directed I/O (VT-d)\" is enabled in Advanced -> System Agent Configuration ***"
echo "***********************************************************************************************************"

sudo sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="intel_iommu=on"/' /etc/default/grub
sudo su -c "update-grub2"
