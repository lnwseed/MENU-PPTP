#!/bin/bash
# Created by http://www.เฮียเบิร์ด.com
# Prohibited Hard Take / mencuplik / copy some or all of this script.
# Copyright www.เฮียเบิร์ด.com (Protected Act number 19 of 2002)
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
echo "Connecting to เฮียเบิร์ด.com..."
sleep 0.2
echo "Checking Permision..."
sleep 0.3
CEK=`curl -s http://api.vps-murah.net/api/checker.php?mode=trial`;
if [ "$CEK" != "Harga Sewa Script: 20.000/IP VPS/Bulan. Fasilitas script ini gratis bagi pelanggan HostingTermurah.net Mau sewa script ini? PM Steven Indarto" ]; then
		echo -e "${red}Permission Denied!${NC}";
        echo $CEK;
        exit 0;
else
echo -e "${green}ได้รับอนุญาตแล้ว...${NC}"
sleep 1
clear
fi
last | grep ppp | grep still | awk '{print " ",$1," - " $3 }' > /tmp/login-db-pptp.txt;
echo "Script by www.เฮียเบิร์ด.com"
echo "Thank you for subscribing at เฮียเบิร์ด.com"
echo "===============================================";
echo " "
echo " "
echo "Checking PPTP VPN User Login";
echo "(Username - IP)";
echo "-------------------------------------";
cat /tmp/login-db-pptp.txt
echo " "
echo " "
echo " "
echo "===============================================";
echo "Script Created by http://www.เฮียเบิร์ด.com";
echo "Thanks for subscribing on เฮียเบิร์ด.com";
