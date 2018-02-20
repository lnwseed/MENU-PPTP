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

read -p "Masukkan Username yang ingin anda hapus: " username
grep -E "^$username" /etc/ppp/chap-secrets >/dev/null
if [ $? -eq 0 ]; then
# proses mengganti passwordnya
username2="/$username/d";
sed -i $username2 /etc/ppp/chap-secrets
sed -i $username2 /var/lib/premium-script/data-user-pptp
sed -i '/^$/d' /etc/ppp/chap-secrets
sed -i '/^$/d' /var/lib/premium-script/data-user-pptp
clear
  echo "Script by vps-murah.net"
  echo "Terimakasih sudah berlangganan di vps-murah.net"
  echo " "
  echo "-----------------------------------------------"
  echo -e "Username ${blue}$username${NC} Sudah berhasil di ${red}HAPUS${NC}."
  echo -e "Akses Login untuk username ${blue}$username${NC} sudah dihapus"
  echo "-----------------------------------------------"
else
echo "Username tidak ditemukan di server anda"
    exit 1
fi
