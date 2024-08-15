#!/bin/bash
apt update && apt install isc-dhcp-server
wget https://raw.githubusercontent.com/tmferreira-ti/SSORI/main/dhcpd.conf -O /etc/dhcp/dhcpd.conf --no-check-certificate --no-cache
wget https://raw.githubusercontent.com/tmferreira-ti/SSORI/main/isc-dhcp-sever -O /etc/default/isc-dhcp-server --no-check-certificate --no-cache
systemctl restart isc-dhcp-server
