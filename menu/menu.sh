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
# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let trb=$trx/2
ssx=$(grep -c -E "^#ss# " "/etc/xray/config.json")
let ssa=$ssx/2
# // Exporting Language to UTF-8
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
ning='\033[1;93m'     # Yellow
BIRU='\033[1;94m'       # Blue
BAYS='\033[1;95m'     # Purple
AYG='\033[1;96m'       # Cyan
PUTIH='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_FD='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
ijo='\033[0;92m'       # Green
kun='\033[0;93m'      # Yellow
biru='\033[0;94m'        # Blue
NILA='\033[0;95m'      # Purple
ZIL='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
DATEVPS=$(date +'%d/%m/%Y')
TIMEZONE=$(printf '%(%H:%M:%S)T')
domain=$(cat /etc/xray/domain)
SERONLINE=$(uptime -p | cut -d " " -f 2-10000)today
up=$(uptime | awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
cores=$(awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo)
freq=$(awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo)
tram=$(free -m | awk 'NR==2 {print $2}')
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*/} / ${corediilik:-1}))"
cpu_usage+=" %"
cname=$(awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo)

clear

# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

###########- END COLOR CODE -##########
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
pro=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
kota=$(curl -s ipinfo.io/city )

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

# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))
USAGERAM=$(free -m | awk 'NR==2 {print $3}')

persenmemori="$(echo "scale=2; $usmem*100/$tomem" | bc)"
#persencpu=
persencpu="$(echo "scale=2; $cpu1+$cpu2" | bc)"


# // Clear
clear
clear && clear && clear
clear;clear;clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ssh=$(service ssh status | grep active | cut -d ' ' $stat)
if [ "$ssh" = "active" ]; then
ressh="${green}ON${NC}"
else
ressh="${red}OFF${NC}"
fi
sshstunel=$(service stunnel4 status | grep active | cut -d ' ' $stat)
if [ "$sshstunel" = "active" ]; then
resst="${green}ON${NC}"
else
resst="${red}OFF${NC}"
fi
sshws=$(service ws-stunnel status | grep active | cut -d ' ' $stat)
if [ "$sshws" = "active" ]; then
ressshws="${green}ON${NC}"
else
ressshws="${red}OFF${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
dbr=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$dbr" = "active" ]; then
resdbr="${green}ON${NC}"
else
resdbr="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
today=$(date -d "0 days" +"%Y-%m-%d")
Exp1=$(curl https://raw.githubusercontent.com/nilaa27/cinta/main/vps| grep $MYIP | awk '{print $3}')
if [[ $today < $Exp1 ]]; then
    sts="${Info}"
else
    sts="${Error}"
fi
DATE=$(date +'%Y-%m-%d')
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo -e "$COLOR1 $NC Expiry In   : $(( (d1 - d2) / 86400 )) Days"
}
mai="datediff "$Exp" "$DATE""

today=`date -d "0 days" +"%Y-%m-%d"`

# CERTIFICATE STATUS
d1=$(date -d "$exp" +%s)
d2=$(date -d "$today" +%s)
certificate=$(( (d1 - d2) / 86400 ))
export sem=$( curl -s https://raw.githubusercontent.com/Tarap-Kuhing/v/main/versi)
export pak=$( cat /home/.ver)
IPVPS=$(curl -s ipinfo.io/ip )
clear
echo -e "${BIRU}┌───────────────────────────────────────────────┐${NC}" 
echo -e "${BIRU}│${NC}$NC \e[1;97;101m            << XLORD VPN STORE >>            \e[0m ${BIRU}│ ${NC}"
echo -e "${BIRU}└───────────────────────────────────────────────┘${NC}" 
echo -e " ${BIRU}┌───────────────────────────────────────────────┐${NC}"
echo -e "${BIRU} │${NC} 🔆$bd OS NAME    : ${BIRU}$cname${NC}"
echo -e "${BIRU} │${NC} 🔆$bd Use Core   : ${BIRU}Multi Lite${NC}"
echo -e "${BIRU} │${NC} 🔆$bd RAM VPS    : ${BIRU}${totalram} MB${NC}"
echo -e "${BIRU} │${NC} 🔆$bd Usage Ram  : ${BIRU}$USAGERAM MB${NC}"
echo -e "${BIRU} │${NC} 🔆$bd IP VPS     : ${BIRU}$IPVPS${NC}"
echo -e "${BIRU} │${NC} 🔆$bd DATE       : ${BIRU}$DATEVPS${NC}"
echo -e "${BIRU} │${NC} 🔆$bd UPTIME     : ${BIRU}$SERONLINE${NC}"
echo -e "${BIRU} │${NC} 🔆$bd CITY       : ${BIRU}$kota${NC}"
echo -e "${BIRU} │${NC} 🔆$bd ISP VPS    : ${BIRU}$pro${NC}" 
echo -e "${BIRU} │${NC} 🔆$bd DOMAIN MU  : ${BIRU}$domain${NC}"
echo -e "${BIRU} │${NC} 🔆$bd KATA KATA  : \033[31;1m𝗝𝗔𝗡𝗚𝗔𝗡 𝗟𝗨𝗣𝗔 𝗦𝗛𝗢𝗟𝗔𝗧${NC}"
echo -e "${BIRU} │${NC} 🔆$bd LIST BW  :${YELLOW} [$ttoday]${NC}"
echo -e "${BIRU} │${NC} 🔆$bd LIST BW  :${YELLOW} [$tmon]${NC}"
echo -e "${BIRU} └───────────────────────────────────────────────┘${NC}"
echo -e " ${BIRU} ┌─────────────────────────────────────────────────────┐${NC}"
 echo -e "${BIRU}  │ ${PUTIH} SSH  ${NC}: $ressh"" │ ${PUTIH} NGINX ${NC}: $resngx"" │   ${PUTIH}XRAY ${NC}: $resv2r"" │${BIGreen}  𝗚𝗢𝗢𝗗 ${BIRU} │"
  echo -e    "${BIRU}  └─────────────────────────────────────────────────────┘${NC}"

echo -e " ${BIRU}        ┌───────────────────────────────────────┐${NC}"
echo -e  "${BIRU}                << LAPORAN DATA CUSTOMER >> ${NC}" | lolcat
echo -e "${NILA}     —————————————————————————————————————————————————\033[95m" | lolcat
echo -e "           ${CYAN}SSH/OPENVPN${NC}    $y=$NC $ssh1${NC}" "$a"
echo -e "           VMESS/WS/GRPC${NC}  $y=$NC $vma$NC" "$a"
echo -e "           VLESS/WS/GRPC${NC}  $y=$NC $vla$NC" "$a"
echo -e "           TROJAN/WS/GRPC${NC} $y=$NC $trb${NC}" "$a"
echo -e "           SHADOW/WS/GRPC${NC} $y=$NC $ssa${NC} $a"
echo -e "${BIRU}         └───────────────────────────────────────┘${NC}" 
echo -e "${NILA}     —————————————————————————————————————————————————\033[95m" | lolcat
echo -e "${BIRU} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e " ${BIRU}     ${biru}1.${kun}) ☞ ${BIRU}${ijo}SSH${BIRU}${NC}    "   "       ${biru}6.${kun}) ☞ ${BIRU}${ijo}GANTI PW VPS${BIRU}${NC}"                                                                  "${BIRU}          "
echo -e " ${BIRU}│    ${biru}2.${kun}) ☞ ${BIRU}${ijo}VMESS${BIRU}${NC} "   "        ${biru}7.${kun}) ☞ ${BIRU}${ijo}BACKUP VPS${BIRU}${NC}"                                                   "${BIRU}           │"
echo -e " ${BIRU}     ${biru}3.${kun}) ☞ ${BIRU}${ijo}VLESS${BIRU}${NC}  "   "       ${biru}8.${kun}) ☞ ${BIRU}${ijo}MENU SETTING${BIRU}${NC}"                                                             "${BIRU}          "
echo -e " ${BIRU}│    ${biru}4.${kun}) ☞ ${BIRU}${ijo}TROJAN${BIRU}${NC} "  "       ${biru}9.${kun}) ☞ ${BIRU}${ijo}CEK RUNNING${BIRU}${NC}"                                                           "${BIRU}          │"
echo -e " ${BIRU}     ${biru}5.${kun}) ☞ ${BIRU}${ijo}TRIAL${BIRU}${NC}  " "       ${biru}10.${kun}) ☞ ${BIRU}${ijo}MONITORING VPS${BIRU}${NC}"                  "${BIRU}       ${NC}"
echo -e " ${BIRU}└─────────────────────────────────────────────────────┘${NC}"
echo -e "${NILA}    ————————————————————————————————————————————————— \033[95m" | lolcat
echo ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; m-ssh ;;
2) clear ; m-vmess ;;
3) clear ; m-vless ;;
4) clear ; m-trojan ;;
5) clear ; m-trial ;;
6) clear ; ganti ;;
7) clear ; menu-backup ;;
8) clear ; menu-set ;;
9) clear ; running ;;
10) clear ; gotop ;;
16) clear ; wget https://raw.githubusercontent.com/nilaa27/gabut/main/menu/updt.sh && chmod +x updt.sh && ./updt.sh && rm -f /root/updt.sh ;;
0) clear ; xlord ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; xlord ;;
esac
