#!/bin/bash
# Created by http://www.vps-murah.net
# Dilarang Keras Mengambil/mencuplik/mengcopy sebagian atau seluruh script ini.
# Hak Cipta VPS-Murah.net (Dilindungi Undang-Undang nomor 19 Tahun 2002)
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
totalaccounts=`cat /var/lib/premium-script/data-user-pptp | wc -l`
echo " " > /tmp/alluser-pptp-data
for((i=1; i<=$totalaccounts; i++ ))
       do  
username=`cat /var/lib/premium-script/data-user-pptp | awk '{print $1}' | head -n $i | tail -n 1`
userpass=`cat /var/lib/premium-script/data-user-pptp | awk '{print $3}' | head -n $i | tail -n 1`
saat_expired=`cat /var/lib/premium-script/data-user-pptp | awk '{print $5}' | head -n $i | tail -n 1`
tanggal_expired=$(date -u --date="1970-01-01 $saat_expired sec GMT" +%Y/%m/%d)
tanggal_expired_display=$(date -u --date="1970-01-01 $saat_expired sec GMT" '+%d %B %Y')
echo "VPS-Murah.net- User : $username dengan password ($userpass) Expire Pada Tanggal : $tanggal_expired_display" >> /tmp/alluser-pptp-data
done
clear
echo "loading..."
sleep 0.5
  echo "Script by vps-murah.net"
  echo "Terimakasih sudah berlangganan di vps-murah.net"
  echo " "
  echo "Daftar User VPN PPTP anda adalah:"
  echo "-----------------------------------------------"
cat /tmp/alluser-pptp-data
  echo "-----------------------------------------------"