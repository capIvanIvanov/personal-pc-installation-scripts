
#sudo ip addr add 192.168.0.1/24 dev eth0

sudo iptables -A FORWARD -o eth2 -i eth0 -s 192.168.0.0/24 -m conntrack --ctstate NEW -j ACCEPT
sudo iptables -A FORWARD -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
sudo iptables -t nat -F POSTROUTING
sudo iptables -t nat -A POSTROUTING -o eth2 -j MASQUERADE

# Save iptables
#sudo iptables-save | sudo tee /etc/iptables.sav

# Enable Forwarding
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"

# Save and automate ICS on boot ...
sudo iptables-save | sudo tee /etc/iptables.sav

echo "!!! WARNING !!! - Copy the following line (Ctrl+Shift+C): iptables-restore < /etc/iptables.sav"
echo "and paste it in /etc/rc.local before exit 0."
read -p "Press [Enter] key to open /etc/rc.local ..."
sudo nano /etc/rc.local

echo "!!! WARNING !!! Read cearfully: Uncomment #net.ipv4.ip_forward=1"
read -p "Press [Enter] key to open /etc/sysctl.conf ..."
sudo nano /etc/sysctl.conf

# Setup DHCP/DNS Servers ...
sudo apt-get install dnsmasq
sudo /etc/init.d/dnsmasq stop
sudo cp /etc/dnsmasq.conf /etc/dnsmasq.conf-backup

echo "!!! WARNING !!! Read cearfully: Add the following lines to /etc/dnsmasq.conf:"
echo "interface=eth0"
echo "dhcp-range=192.168.0.100,192.168.0.250,72h (They are already there, find them, uncomment them and set the propper values.)"
read -p "Press [Enter] key to open /etc/dnsmasq.conf ..."
sudo nano /etc/dnsmasq.conf
sudo /etc/init.d/dnsmasq start

echo "!!! WARNING !!! - Copy the following line (Ctrl+Shift+C): sudo /etc/init.d/dnsmasq start"
echo "and paste it in /etc/rc.local before exit 0."
read -p "Press [Enter] key to open /etc/rc.local ..."
sudo nano /etc/rc.local
