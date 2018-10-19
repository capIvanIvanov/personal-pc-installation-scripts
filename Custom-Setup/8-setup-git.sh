#!/bin/bash

sudo apt-get -y install samba
sudo apt-get -y install git

echo "Enter the Samba Password."
sudo smbpasswd ivan

sudo su -c "echo '[Documents]' >> /etc/samba/smb.conf"
sudo su -c "echo '	comment    = Documents of Fractal-Design-PC'    >> /etc/samba/smb.conf"
sudo su -c "echo '	path       = /home/ivan/Documents'              >> /etc/samba/smb.conf"
sudo su -c "echo '	browseable = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	writable   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	guest ok   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	' >> /etc/samba/smb.conf"
sudo su -c "echo '[Storage]' >> /etc/samba/smb.conf"
sudo su -c "echo '	comment    = Storage of Fractal-Design-PC'      >> /etc/samba/smb.conf"
sudo su -c "echo '	path       = /home/ivan/Storage'                >> /etc/samba/smb.conf"
sudo su -c "echo '	browseable = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	writable   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	guest ok   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	' >> /etc/samba/smb.conf"
sudo su -c "echo '[Install-Sets]' >> /etc/samba/smb.conf"
sudo su -c "echo '	comment    = Install-Sets on Fractal-Design-PC' >> /etc/samba/smb.conf"
sudo su -c "echo '	path       = /home/ivan/Install-Sets'           >> /etc/samba/smb.conf"
sudo su -c "echo '	browseable = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	writable   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	guest ok   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	' >> /etc/samba/smb.conf"
sudo su -c "echo '[Videos]' >> /etc/samba/smb.conf"
sudo su -c "echo '	comment    = Videos on Fractal-Design-PC'       >> /etc/samba/smb.conf"
sudo su -c "echo '	path       = /home/ivan/Videos'                 >> /etc/samba/smb.conf"
sudo su -c "echo '	browseable = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	writable   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	guest ok   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	' >> /etc/samba/smb.conf"
sudo su -c "echo '[Anime]' >> /etc/samba/smb.conf"
sudo su -c "echo '	comment    = Anime on Fractal-Design-PC'        >> /etc/samba/smb.conf"
sudo su -c "echo '	path       = /home/ivan/Movies/Anime'           >> /etc/samba/smb.conf"
sudo su -c "echo '	browseable = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	writable   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	guest ok   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	' >> /etc/samba/smb.conf"
sudo su -c "echo '[Documentary]' >> /etc/samba/smb.conf"
sudo su -c "echo '	comment    = Documentary on Fractal-Design-PC'  >> /etc/samba/smb.conf"
sudo su -c "echo '	path       = /home/ivan/Movies/Documentary'     >> /etc/samba/smb.conf"
sudo su -c "echo '	browseable = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	writable   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	guest ok   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	' >> /etc/samba/smb.conf"
sudo su -c "echo '[Movies]' >> /etc/samba/smb.conf"
sudo su -c "echo '	comment    = Movies on Fractal-Design-PC'       >> /etc/samba/smb.conf"
sudo su -c "echo '	path       = /home/ivan/Movies/Movies'          >> /etc/samba/smb.conf"
sudo su -c "echo '	browseable = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	writable   = yes'                               >> /etc/samba/smb.conf"
sudo su -c "echo '	guest ok   = yes'                               >> /etc/samba/smb.conf"

ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub | ssh ivan@192.168.1.146 "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"
