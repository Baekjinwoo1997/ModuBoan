#! /bin/bash


echo -e "[U-02]패스워드 복잡성 설정"
if [ -f /etc/pam.d/system-auth ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"
fi
echo -e "/etc/pam.d/system-auth에 패스워드 복잡성 설정이 존재해야 합니다."

if [ -f /etc/login.defs ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"
fi
echo -e "/etc/login.defs에 패스워드 사용기간 설정이 존재해야 합니다.\n"