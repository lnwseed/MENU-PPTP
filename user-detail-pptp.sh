#!/bin/bash
# Created by http://www.เฮียเบิร์ด.com
# Prohibited Hard Take / mencuplik / copy some or all of this script.
# Copyright www.เฮียเบิร์ด.com (Protected Act number 19 of 2002)
red='\e[1;31m'
green='\e[0;32m'
blue='\e[1;34m'
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
chmod +x /var/lib/premium-script/data-user-pptp


read -p "Masukkan Username : " username
grep -E "^$username" /var/lib/premium-script/data-user-pptp >/dev/null
if [ $? -eq 0 ]; then
userpass=`cat /var/lib/premium-script/data-user-pptp | grep "^$username" | awk '{print $3}'`
saat_expired=`cat /var/lib/premium-script/data-user-pptp | grep "^$username" | awk '{print $5}'`
tanggal_expired=$(date -u --date="1970-01-01 $saat_expired sec GMT" +%Y/%m/%d)
tanggal_expired_display=$(date -u --date="1970-01-01 $saat_expired sec GMT" '+%d %B %Y')
clear
echo "loading..."
sleep 1
clear
  echo "Script by vps-murah.net"
  echo "Terimakasih sudah berlangganan di vps-murah.net"
  echo " "
  echo "Demikian Detail Account Untuk Username $Username"
  echo "---------------------------------------"
  echo "   Username        : $username"
  echo "   Password        : $userpass"
  echo "   Tanggal Expired : $tanggal_expired_display"
  echo "--------------------------------------"
else
echo "Username tidak ditemukan di server anda"
    exit 1
fi
