#!/bin/bash
 
sudo losetup -o 1573912576 /dev/loop1 /home/ivan/Install-Sets/ThinkPadT540P_HDD.img
sudo mount -o ro -t ntfs /dev/loop1 /home/ivan/Public/
cp -nrv /home/ivan/Public/Windows/* /home/ivan/.wine/drive_c/windows/
cp -nrv "/home/ivan/Public/Program Files/*" "/home/ivan/.wine/drive_c/Program Files/"
cp -nrv "/home/ivan/Public/Program Files (x86)/*" "/home/ivan/.wine/drive_c/Program Files (x86)/"
