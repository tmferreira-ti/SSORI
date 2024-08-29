#!/bin/bash
#apt update && apt install isc-dhcp-server
#wget https://raw.githubusercontent.com/tmferreira-ti/SSORI/main/dhcpd.conf -O /etc/dhcp/dhcpd.conf --no-check-certificate --no-cache
#wget https://raw.githubusercontent.com/tmferreira-ti/SSORI/main/isc-dhcp-sever -O /etc/default/isc-dhcp-server --no-check-certificate --no-cache
#systemctl restart isc-dhcp-server

wget https://github.com/tmferreira-ti/SSORI/raw/main/sysctl.conf -O /etc/sysctl.conf -no-check-certificate --no-cache
wget https://github.com/tmferreira-ti/SSORI/blob/main/configs/interfaces -O /etc/network/interfaces --no-check-certificate --no-cache
wget https://github.com/tmferreira-ti/SSORI/raw/main/configs/nftables.conf -O /etc/nftables.conf --no-check-certificate --no-cache

systemctl enable nftables
reboot
