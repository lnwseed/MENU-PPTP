#!/bin/bash
# Created by http://www.vps-murah.net
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
echo "Connecting to VPS-murah.net..."
sleep 0.2
echo "Checking Permision..."
sleep 0.3
CEK=`curl -s http://api.vps-murah.net/api/checker.php?mode=trial`;
if [ "$CEK" != "MEMBER" ]; then
		echo -e "${red}Permission Denied!${NC}";
        echo $CEK;
        exit 0;
else
echo -e "${green}Permission Accepted...${NC}"
sleep 1
clear
fi
last | grep ppp | grep still | awk '{print " ",$1," - " $3 }' > /tmp/login-db-pptp.txt;
echo "Script by vps-murah.net"
echo "Terimakasih sudah berlangganan di vps-murah.net"
echo "===============================================";
echo " "
echo " "
echo "Memeriksa User PPTP VPN Yang Login";
echo "(Username - IP)";
echo "-------------------------------------";
cat /tmp/login-db-pptp.txt
echo " "
echo " "
echo " "
echo "===============================================";
echo "Script Created by http://VPS-murah.net";
echo "Terimakasih sudah berlanggan di VPS-Murah.net";