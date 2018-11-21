#!/bin/bash

#sudo apt-get -y install libasound2-plugins-extra

#pacmd list-cards

pacmd set-card-profile alsa_card.pci-0000_05_00.1 off
pacmd set-card-profile alsa_card.pci-0000_00_1b.0 off
pacmd set-card-profile alsa_card.usb-Creative_Technology_Ltd_SB_X-Fi_Surround_5.1_Pro_000006Yr-00 output:analog-surround-51
pacmd set-default-sink alsa_output.usb-Creative_Technology_Ltd_SB_X-Fi_Surround_5.1_Pro_000006Yr-00.analog-surround-51
