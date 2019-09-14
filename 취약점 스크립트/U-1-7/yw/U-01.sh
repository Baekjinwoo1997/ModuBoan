#! /bin/bash

echo -e "[U-01]계정 원격 접속 제한"
if [ ! $(cat /etc/securetty | grep pts) ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else
	echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "/etc/securetty에 pts설정이 존재하지 않아야 합니다."

if [ $(cat /etc/pam.d/login | grep -v "#" | awk '/auth\trequried\tpam_securetty.so/')  ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else
	echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "/etc/pam.d/login에 pam_securetty.so설정이 존재해야 합니다.\n"
