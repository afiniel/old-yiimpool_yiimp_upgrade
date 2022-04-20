##################################################
# Source code https://github.com/end222/pacmenu  #
# Updated by Afiniel for crypto use...           #
##################################################

source /etc/functions.sh
cd $HOME/yiimpool/yiimp_upgrade

RESULT=$(dialog --stdout --nocancel --default-item 1 --title "YiiMP Pool Updater v4.7.3" --menu "Choose one" -1 65 7 \
' ' "- Upgrade Stratum and YiiMP Single Server Installation -" \
1 "Upgrade YiiMP Single Server Installation" \
' ' "- Upgrade YiiMP Web Server Multi Server Installation -" \
2 "Upgrade Web Server - Run on web server" \
3 Exit)
if [ $RESULT = ]
then
bash $(basename $0) && exit;
fi

if [ $RESULT = 1 ]
then
clear;
cd $HOME/yiimpool/yiimp_upgrade
source single.sh;
fi

if [ $RESULT = 2 ]
then
clear;
cd $HOME/yiimpool/yiimp_upgrade
source up_web.sh
fi

if [ $RESULT = 3 ]
then
clear;
exit;
fi
