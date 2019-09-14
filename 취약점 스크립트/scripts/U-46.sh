#! /bin/bash

echo -e "[U-46]패스워드 최소 길이 설정"
if [ $(cat /etc/login.defs | awk '/PASS_MIN_LEN/ $2 >= 8{print $0}') ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"
fi
echo -e "/etc/login.defs에 패스워드 최소길이가 8이상이어야 합니다.\n"
