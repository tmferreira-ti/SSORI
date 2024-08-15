#!/bin/bash
apt update && apt install isc-dhcp-server
wget https://raw.githubusercontent.com/tmferreira-ti/SSORI/main/dhcpd.conf -O /etc/dhcp/dhcpd.conf --no-checkcertificates --no-cache
wget https://raw.githubusercontent.com/tmferreira-ti/SSORI/main/isc-dhcp-sever -O /etc/default/isc-dhcp-server --no-checkcertificates --no-cache
systemctl restart isc-dhcp-server
