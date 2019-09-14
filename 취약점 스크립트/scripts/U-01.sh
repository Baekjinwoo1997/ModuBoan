#! /bin/bash

echo -e "[U-01]계정 원격 접속 제한" 
if [ ! $(cat /etc/securetty | grep pts) ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "/etc/securtty에 pts설정이 존재하지 않아야 합니다."
#탭검색test:$(cat "/etc/pam.d/login" | awk '/auth\tinclude\tsystem-auth/{print $0}' | grep -c auth)

if [ $(cat "/etc/pam.d/login" | awk '/auth\trequired\tpam_securetty.so/{print $0}' | grep -c auth) -eq 1 ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -n -e "/etc/pam.d/login에 pam_securetty.so설정이 존재해야 합니다."
