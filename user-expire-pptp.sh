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
echo "echo "Script Created By เฮียเบิร์ด.com"" > /usr/local/bin/infouser-pptp
echo "echo "Script Created By เฮียเบิร์ด.com"" > /usr/local/bin/expireduser-pptp
chmod +x /usr/local/bin/infouser-pptp
chmod +x /usr/local/bin/expireduser
chmod +x /etc/ppp/chap-secrets
chmod +x /var/lib/premium-script/data-user-pptp

totalaccounts=`cat /var/lib/premium-script/data-user-pptp | wc -l`
for((i=1; i<=$totalaccounts; i++ ))
       do       
       username=`cat /var/lib/premium-script/data-user-pptp | awk '{print $1}' | head -n $i | tail -n 1`
       userexpireinseconds=`cat /var/lib/premium-script/data-user-pptp | awk '{print $5}' | head -n $i | tail -n 1`
       tglexp=`date -d @$userexpireinseconds`             
       tgl=`echo $tglexp|awk -F" " '{print $3}'`
       bulantahun=`echo $tglexp |awk -F" " '{print $2,$6}'`
       todaystime=`date +%s`
	   seeder=s/^$username/#$username/g
       if [ $userexpireinseconds -ge $todaystime ] ;
           then
           timeto7days=$(( $todaystime + 604800 ))
                if [ $userexpireinseconds -le $timeto7days ];
                then                     
                     echo "echo "เฮียเบิร์ด.com- ไอดี : $username หมดอายุแล้ว : $tgl $bulantahun"" >> /usr/local/bin/infouser-pptp
                fi
       else
       echo "echo "เฮียเบิร์ด.com- ไอดี : $username หมดอายุในวันที่ : $tgl $bulantahun"" >> /usr/local/bin/expireduser-pptp
	   sed -i $seeder /var/lib/premium-script/data-user-pptp
	   sed -i $seeder /etc/ppp/chap-secrets
	   sed -i "s|##|#|g" /etc/ppp/chap-secrets
	   sed -i "s|###|#|g" /etc/ppp/chap-secrets
	   sed -i "s|####|#|g" /etc/ppp/chap-secrets
	   sed -i "s|#####|#|g" /etc/ppp/chap-secrets
	   sed -i "s|######|#|g" /etc/ppp/chap-secrets
	   sed -i "s|#######|#|g" /etc/ppp/chap-secrets
	   sed -i "s|########|#|g" /etc/ppp/chap-secrets
	   sed -i "s|#########|#|g" /etc/ppp/chap-secrets
	   sed -i "s|##########|#|g" /etc/ppp/chap-secrets
	   sed -i "s|###########|#|g" /etc/ppp/chap-secrets
	   sed -i "s|############|#|g" /etc/ppp/chap-secrets
	   sed -i "s|#############|#|g" /etc/ppp/chap-secrets
	   sed -i "s|##############|#|g" /etc/ppp/chap-secrets
	   sed -i "s|###############|#|g" /etc/ppp/chap-secrets
	   sed -i "s|################|#|g" /etc/ppp/chap-secrets
	   sed -i "s|#################|#|g" /etc/ppp/chap-secrets
	   sed -i "s|##|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|###|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|####|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|#####|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|######|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|#######|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|########|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|#########|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|##########|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|###########|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|############|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|#############|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|##############|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|###############|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|################|#|g" /var/lib/premium-script/data-user-pptp
	   sed -i "s|#################|#|g" /var/lib/premium-script/data-user-pptp
       fi
done
  echo "Script by เฮียเบิร์ด.com"
  echo "Thank you for subscribing at เฮียเบิร์ด.com"
  echo " "
    echo "-----------------------------------------------"
  echo -e "ผู้ใช้ PPTP VPN ที่หมดอายุถูกล็อก"
  echo -e "การเข้าสู่ระบบสำหรับชื่อผู้ใช้ที่หมดอายุจะไม่สามารถใช้งานได้"
  echo "-----------------------------------------------"
