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
last | grep ppp | grep still | awk '{print " ",$1," - " $3 }' > /tmp/login-db-pptp.txt;
echo "Script by www.เฮียเบิร์ด.com"
echo "Thank you for subscribing at เฮียเบิร์ด.com"
echo "===============================================";
echo " "
echo " "
echo "ตรวจสอบการเข้าสู่ระบบผู้ใช้ PPTP VPN";
echo "(Username - IP)";
echo "-------------------------------------";
cat /tmp/login-db-pptp.txt
echo " "
echo " "
echo " "
echo "===============================================";
echo "Script Created by http://www.เฮียเบิร์ด.com";
echo "Thanks for subscribing on เฮียเบิร์ด.com";
