#! /bin/bash

echo -e "[U-48]패스워드 최소 사용기간 설정"
if [ $(cat /etc/login.defs | awk '/PASS_MIN_DAYS/ $2 == 1{print $0}') ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"
fi
echo -e "/etc/login.defs에 패스워드 최소 사용기간이 1일 이어야 합니다.\n"
