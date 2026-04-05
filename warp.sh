#!/bin/bash
Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'
green='\e[0;32m'
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
grenbo="\e[92;1m"
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
ipsaya=$(curl -sS ipv4.icanhazip.com)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/ibnuhalim/permision/main/izin"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          XD STORE AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      ${GREEN}Telegram${NC} t.me/kakatiri"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit 0
  fi
}
checking_sc
clear
echo -e " "
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "                Warp Manager           "
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "  ${ORANGE}[1].${NC}\033[0;36m Install Warp Client${NC}"
echo -e "  ${ORANGE}[2].${NC}\033[0;36m Uninstall Warp Client${NC}"
echo -e "  ${ORANGE}[3].${NC}\033[0;36m Restart warp Client${NC}"
echo -e "  ${ORANGE}[4].${NC}\033[0;36m Aktifkan Warp Mode Proxy${NC}"
echo -e "  ${ORANGE}[5].${NC}\033[0;36m Matikankan Warp Mode Proxy${NC}"
echo -e "  ${ORANGE}[6].${NC}\033[0;36m Install Warp Wireguard${NC}"
echo -e "  ${ORANGE}[7].${NC}\033[0;36m Warp Ipv4${NC}"
echo -e "  ${ORANGE}[8].${NC}\033[0;36m Warp Ipv6${NC}"
echo -e "  ${ORANGE}[9].${NC}\033[0;36m Warp Ipv4 & Ipv6${NC}"
echo -e " ${ORANGE}[10].${NC}\033[0;36m Warp Routing IP${NC}"
echo -e " ${ORANGE}[11].${NC}\033[0;36m Restart Warp Wireguard${NC}"
echo -e " ${ORANGE}[12].${NC}\033[0;36m Matikan Warp Wireguard${NC}"
echo -e " ${ORANGE}[13].${NC}\033[0;36m Warp Status${NC}"
echo -e " ${ORANGE}[14].${NC}\033[0;36m Warp Version${NC}"
echo -e " ${ORANGE}[15].${NC}\033[0;36m Help${NC}"
echo -e " ${ORANGE}[16].${NC}\033[0;36m Warp Menu ${NC}"
echo -e "  ${ORANGE}[x].${NC}\033[0;36m  Exit ${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
read -p "Select From Options [ 1 - 16 or x ] : " menu
echo -e ""
case $menu in
1)
    bash <(curl -fsSL git.io/warp.sh) install
    ;;
2)
    bash <(curl -fsSL git.io/warp.sh) uninstall
    ;;
3)
    bash <(curl -fsSL git.io/warp.sh) restart
    ;;
4)
    bash <(curl -fsSL git.io/warp.sh) proxy
    ;;
5)
    bash <(curl -fsSL git.io/warp.sh) unproxy
    ;;
6)
    bash <(curl -fsSL git.io/warp.sh) wg
    ;;
7)
    bash <(curl -fsSL git.io/warp.sh) wg4
    ;;
8)
    bash <(curl -fsSL git.io/warp.sh) wg6 
    ;;
9)
    bash <(curl -fsSL git.io/warp.sh) wgd
    ;;
10) 
    bash <(curl -fsSL git.io/warp.sh) wgx
   ;;
11)
    bash <(curl -fsSL git.io/warp.sh) rwg
   ;;
12)
    bash <(curl -fsSL git.io/warp.sh) dwg
   ;;
13)
    bash <(curl -fsSL git.io/warp.sh) status
   ;;
14)
    bash <(curl -fsSL git.io/warp.sh) help
   ;;
15)
    bash <(curl -fsSL git.io/warp.sh) version
   ;;
16)
    bash <(curl -fsSL git.io/warp.sh) menu
   ;;
*)
    menu
    ;;
esac
