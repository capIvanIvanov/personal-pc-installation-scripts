#!/bin/bash

sudo su -c "cp -v /etc/default/grub /etc/default/grub.original"
sudo sed -i 's/GRUB_TIMEOUT_STYLE=hidden/GRUB_TIMEOUT_STYLE=menu/' /etc/default/grub
sudo sed -i 's/GRUB_TIMEOUT=10/GRUB_TIMEOUT=3/' /etc/default/grub
sudo su -c "update-grub2"
