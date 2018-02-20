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
if [ "$CEK" != "on" ]; then
		echo -e "${red}Permission Denied!${NC}";
        echo $CEK;
        exit 0;
else
echo -e "${green}ได้รับอนุญาตแล้ว...${NC}"
sleep 1
clear
fi
if [ -e "/var/lib/premium-script" ]; then
		echo "continue..."
		clear
	else
		mkdir /var/lib/premium-script;
fi
read -p "ป้อนชื่อผู้ใช้ : " username
grep -E "^$username" /etc/ppp/chap-secrets >/dev/null
if [ $? -eq 0 ]; then
echo "ชื่อผู้ใช้มีอยู่แล้วใน VPS ของคุณ"
exit 0
else
read -p "ใส่รหัสผ่าน : " password
read -p "ป้อนระยะเวลาบัญชี (วัน): " masa_aktif

today=`date +%s`
masa_aktif_detik=$(( $masa_aktif * 86400 ))
saat_expired=$(($today + $masa_aktif_detik))
tanggal_expired=$(date -u --date="1970-01-01 $saat_expired sec GMT" +%Y/%m/%d)
tanggal_expired_display=$(date -u --date="1970-01-01 $saat_expired sec GMT" '+%d %B %Y')
clear
echo "Connecting to เฮียเบิร์ด.com..."
sleep 0.5
echo "Creating Account..."
sleep 0.2
echo "Generating Host..."
sleep 0.2
echo "Creating Your New Username: $username"
sleep 0.2
echo "Creating Password for $username"
sleep 0.3
MYIP=$(wget -qO- ipv4.icanhazip.com)
echo "$username	*	$password	*" >> /etc/ppp/chap-secrets
echo "$username *   $password   *  $saat_expired"  >> /var/lib/premium-script/data-user-pptp
  clear
  echo "Script by เฮียเบิร์ด.com"
  echo "Thank you for subscribing at เฮียเบิร์ด.com"
  echo " "
  echo "สร้างบัญชีผู้ใช้เรียบร้อยแล้ว"
  echo "---------------------------------------"
  echo "   Host            : $MYIP"
  echo "   Username        : $username"
  echo "   Password        : $password"
  echo "   Expired Date    : $tanggal_expired_display"
  echo "--------------------------------------"
  echo " "
fi
