#!/bin/bash

sudo su -c "cat grub.txt > /etc/default/grub"
sudo su -c "update-grub2"
