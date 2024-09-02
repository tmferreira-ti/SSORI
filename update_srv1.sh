#!/bin/bash
#apt update && apt install isc-dhcp-server
#wget https://raw.githubusercontent.com/tmferreira-ti/SSORI/main/dhcpd.conf -O /etc/dhcp/dhcpd.conf --no-check-certificate --no-cache
#wget https://raw.githubusercontent.com/tmferreira-ti/SSORI/main/isc-dhcp-sever -O /etc/default/isc-dhcp-server --no-check-certificate --no-cache
#systemctl restart isc-dhcp-server

wget https://raw.githubusercontent.com/tmferreira-ti/SSORI/main/sysctl.conf -O /etc/sysctl.conf -no-check-certificate --no-cache
wget https://raw.githubusercontent.com/tmferreira-ti/SSORI/main/configs/interfaces -O /etc/network/interfaces --no-check-certificate --no-cache
wget https://raw.githubusercontent.com/tmferreira-ti/SSORI/main/configs/nftables.conf -O /etc/nftables.conf --no-check-certificate --no-cache
wget https://raw.githubusercontent.com/tmferreira-ti/SSORI/main/configs/sshd_config -O /etc/ssh/sshd_config --no-check-certificate --no-cache

systemctl enable nftables
reboot
