#!/bin/bash

BURIQ () {
    curl -sS https://raw.githubusercontent.com/nilaa27/cinta/main/vps> /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/nilaa27/cinta/main/vps| grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/nilaa27/cinta/main/vps| awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/nilaa27/cinta/main/vps| grep $MYIP | awk '{print $3}')
fi

###########- END COLOR CODE -##########
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
pro=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
kota=$(curl -s ipinfo.io/city )


BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
putih='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
biru='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

clear
echo -e "$biru══════════════════ Autoscript PREMIUM ══════════════════\e[0m" | tee -a log-install.txt
echo""
echo "   >>> Service & Port" | lolcat  
echo""
echo "   - ———————————————————————————————————"
echo "          << INFORMASI PORT SSH >>     " | lolcat
echo "   - ———————————————————————————————————"
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
echo "   - Stunnel4                : 443"  | tee -a log-install.txt
echo "   - Udp Custom              : 1-65535"  | tee -a log-install.txt
echo "   - Websocket SSH(HTTP)     : 80, 8880"  | tee -a log-install.txt
echo "   - Websocket SSL(HTTPS)    : 443"  | tee -a log-install.txt
echo "   - ———————————————————————————————————"
echo "          << BDVPN,NGNX,GRPC >>    "  | lolcat
echo "   - ———————————————————————————————————"
echo "   - Badvpn                  : 7200"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Grpc                    : 443"  | tee -a log-install.txt
echo "   - ———————————————————————————————————"
echo "            << XRAY PORT >>        "    | lolcat
echo "   - ———————————————————————————————————"
echo "   - Xray Vmess Ws Tls       : 443"  | tee -a log-install.txt
echo "   - Xray Vless Ws Tls       : 443"  | tee -a log-install.txt
echo "   - Xray Trojan Ws Tls      : 443"  | tee -a log-install.txt
echo "   - Xray Vmess Ws None Tls  : 80"  | tee -a log-install.txt
echo "   - Xray Vless Ws None Tls  : 80"  | tee -a log-install.txt
echo "   - ——————————————————————————————————————"
echo "             << SERVICE SCRIPT >>  " | lolcat 
echo "   - ———————————————————————————————————"
echo""
echo "   - ✅BW MONITORING"  
echo "   - ✅CHECK LOGIN USER"  
echo "   - ✅CHECK LOG AKUN"  
echo "   - ✅AUTO CLEAR"  
echo "   - ✅REBOOT JAM 05:00"  
echo "   - ✅BACKUP & RESTORE"  
echo "   - ✅UDP & SLOW"  
echo "   - ✅MENU TRIAL ALL SERVICE"  
echo "   - ✅GANTI PW VPS"  
echo "   - ———————————————————————————————————"
echo "            << DETAIL CLIENTS >>    "  | lolcat
echo "   - ———————————————————————————————————"
echo "   - Clients: ${Name}"
echo "   - EXP: ${Exp}"
echo "   - ISP: ${pro}"
echo "   - CITY: ${kota}"
echo""
echo -e "$biru══════════════════ Autoscript By XlordVpn ══════════════════\e[0m" | tee -a log-install.txt
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
xlord
esac
