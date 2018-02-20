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
echo "echo "Script Created By VPS-Murah.net"" > /usr/local/bin/infouser-pptp
echo "echo "Script Created By VPS-Murah.net"" > /usr/local/bin/expireduser-pptp
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
                     echo "echo "VPS-Murah.net- User : $username Akan Segera Expired Pada tanggal : $tgl $bulantahun"" >> /usr/local/bin/infouser-pptp
                fi
       else
       echo "echo "VPS-Murah.net- User : $username Sudah Expired Pada Tanggal : $tgl $bulantahun"" >> /usr/local/bin/expireduser-pptp
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
  echo "Script by vps-murah.net"
  echo "Terimakasih sudah berlangganan di vps-murah.net"
  echo " "
    echo "-----------------------------------------------"
  echo -e "User VPN PPTP yang telah expired telah dikunci"
  echo -e "Akses Login untuk username sudah dikunci"
  echo "-----------------------------------------------"