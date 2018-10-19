#!/bin/bash

mkdir /home/ivan/Virtual-Machines
mkdir /home/ivan/Storage
mkdir /home/ivan/Install-Sets
mkdir /home/ivan/Movies
mkdir /home/ivan/Movies/Documentary
mkdir /home/ivan/Movies/Anime
mkdir /home/ivan/Movies/Movies

sudo su -c "echo '# Mount /dev/sdb4 on /home/ivan/Documents...' >> /etc/fstab"
sudo su -c "echo 'UUID=1248C54C3475BE20                     /home/ivan/Documents		ntfs	defaults	0	2' >> /etc/fstab"

sudo su -c "echo '# Mount /dev/sdc7 on /home/ivan/Virtual-Machines...' >> /etc/fstab"
sudo su -c "echo 'UUID=b10e583a-0cda-4749-9fc6-d78276b18d02 /home/ivan/Virtual-Machines	ext4	defaults	0	2' >> /etc/fstab"

sudo su -c "echo '# Mount /dev/sdf1 on /home/ivan/Storage...' >> /etc/fstab"
sudo su -c "echo 'UUID=AC0209D60209A684                     /home/ivan/Storage		ntfs	defaults	0	2' >> /etc/fstab"

sudo su -c "echo '# Mount /dev/sdg1 on /home/ivan/Install-Sets...' >> /etc/fstab"
sudo su -c "echo 'UUID=CC3C17DE3C17C27E                     /home/ivan/Install-Sets	ntfs	defaults	0	2' >> /etc/fstab"

sudo su -c "echo '# Mount /dev/sdh1 on /home/ivan/Videos...' >> /etc/fstab"
sudo su -c "echo 'UUID=A232AB3732AB0F7B                     /home/ivan/Videos		ntfs	defaults	0	2' >> /etc/fstab"

sudo su -c "echo '# Mount /dev/sd on /home/ivan/Movies/Documentary...' >> /etc/fstab"
sudo su -c "echo 'UUID=B626C19726C158CF                     /home/ivan/Movies/Documentary	ntfs	defaults	0	2' >> /etc/fstab"

sudo su -c "echo '# Mount /dev/sd on /home/ivan/Movies/Anime...' >> /etc/fstab"
sudo su -c "echo 'UUID=2AB2E3C6B2E3949B                     /home/ivan/Movies/Anime	ntfs	defaults	0	2' >> /etc/fstab"

sudo su -c "echo '# Mount /dev/sd on /home/ivan/Movies/Movies...' >> /etc/fstab"
sudo su -c "echo 'UUID=1016F1F416F1DB24                     /home/ivan/Movies/Movies	ntfs	defaults	0	2' >> /etc/fstab"

sudo su -c "chown --recursive ivan:ivan /home/ivan/Virtual-Machines"
