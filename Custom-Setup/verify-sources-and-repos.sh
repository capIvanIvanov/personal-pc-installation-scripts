#!/bin/bash

sudo apt-get -y install curl

echo "**************** Kernel ****************"
curl -Is http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.18/linux-headers-4.18.0-041800_4.18.0-041800.201808122131_all.deb | head -1
curl -Is http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.18/linux-headers-4.18.0-041800-generic_4.18.0-041800.201808122131_amd64.deb | head -1
curl -Is http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.18/linux-image-unsigned-4.18.0-041800-generic_4.18.0-041800.201808122131_amd64.deb | head -1
curl -Is http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.18/linux-modules-4.18.0-041800-generic_4.18.0-041800.201808122131_amd64.deb | head -1

sudo add-apt-repository ppa:ubuntu-x-swat/updates 
sudo add-apt-repository ppa:oibaf/graphics-drivers

echo "**************** Mesa ****************"
apt-cache search --names-only mesa-utils

echo "**************** Vulkan ****************"
apt-cache search --names-only libvulkan1
apt-cache search --names-only libvulkan-dev
apt-cache search --names-only mesa-vulkan-drivers
apt-cache search --names-only vulkan-utils
