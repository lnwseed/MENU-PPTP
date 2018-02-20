#!/bin/bash
# Created by http://www.เฮียเบิร์ด.com
# Prohibited Hard Take / mencuplik / copy some or all of this script.
# Copyright www.เฮียเบิร์ด.com (Protected Act number 19 of 2002)
red='\e[1;31m'
green='\e[0;32m'
blue='\e[1;34m'
NC='\e[0m'
echo "Connecting to เฮียเบิร์ด.com..."
sleep 0.2
echo "Checking Permision..."
sleep 0.3
CEK=`curl -s http://xn--l3clxf6cwbe0gd7j.com/api/checker.php`;
if [ "$CEK" != "on" ]; then
		echo -e "${red}Permission Denied!${NC}";
        echo $CEK;
        exit 0;
else
echo -e "${green}ได้รับอนุญาตแล้ว...${NC}"
sleep 1
clear
fi

read -p "ป้อนชื่อผู้ใช้ที่คุณต้องการลบ : " username
grep -E "^$username" /etc/ppp/chap-secrets >/dev/null
if [ $? -eq 0 ]; then
# proses mengganti passwordnya
username2="/$username/d";
sed -i $username2 /etc/ppp/chap-secrets
sed -i $username2 /var/lib/premium-script/data-user-pptp
sed -i '/^$/d' /etc/ppp/chap-secrets
sed -i '/^$/d' /var/lib/premium-script/data-user-pptp
clear
  echo "Script by เฮียเบิร์ด.com"
  echo "Thank you for subscribing at เฮียเบิร์ด.com"
  echo " "
  echo "-----------------------------------------------"
  echo -e "Username ${blue}$username${NC} It's been successful at ${red}HAPUS${NC}."
  echo -e "Login Access for username ${blue}$username${NC} ลบแล้ว"
  echo "-----------------------------------------------"
else
echo "ไม่พบชื่อผู้ใช้บนเซิร์ฟเวอร์ของคุณ"
    exit 1
fi
