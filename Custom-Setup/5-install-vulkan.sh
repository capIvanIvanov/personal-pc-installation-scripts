#!/bin/bash

sudo add-apt-repository ppa:oibaf/graphics-drivers
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install libvulkan1 libvulkan-dev mesa-vulkan-drivers vulkan-utils

