#!/bin/bash
# Created by http://www.เฮียเบิร์ด.com
# Prohibited Hard Take / mencuplik / copy some or all of this script.
# Copyright www.เฮียเบิร์ด.com (Protected Act number 19 of 2002)
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
echo "Connecting to script.เฮียเบิร์ด.com..."
sleep 0.2
echo "Checking Permision..."
sleep 0.3
# GO TO ROOT
MYIP=$(wget -qO- ipv4.icanhazip.com);
myip=$(wget -qO- ipv4.icanhazip.com);

flag=0
	
#iplist="ip.txt"

wget --quiet -O checker.php http://xn--l3clxf6cwbe0gd7j.com/api/checker.php

#if [ -f iplist ]
#then

iplist="checker.php"
status="on"

lines=`cat $iplist`
#echo $lines

for line in $lines; do
#        echo "$line"
        if [ "$line" = "$status" ];
        then
                flag=1
        fi

done

if [ $flag -eq 0 ]
then
   echo  "ขออภัยเฉพาะ IP @ Password ที่ลงทะเบียนเท่านั้นที่สามารถใช้สคริปต์นี้ได้!
ติดต่อ: HERE BIRD (097-026-7262) Facebook : m.me/ceolnw" | lolcat
	exit 1
sleep 1
clear
fi
rm checker.php
chmod +x /var/lib/premium-script/data-user-pptp


read -p "ป้อนชื่อผู้ใช้ : " username
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
  echo "Script by เฮียเบิร์ด.com"
  echo "Thank you for subscribing at เฮียเบิร์ด.com"
  echo " "
  echo "รายละเอียดสำหรับบัญชีผู้ใช้ $Username"
  echo "---------------------------------------"
  echo "   Username        : $username"
  echo "   Password        : $userpass"
  echo "   Expired Date    : $tanggal_expired_display"
  echo "--------------------------------------"
else
echo "ไม่พบชื่อผู้ใช้บนเซิร์ฟเวอร์ของคุณ"
    exit 1
fi
