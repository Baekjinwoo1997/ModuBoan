#! /bin/bash

max_days=$(cat /etc/login.defs | awk '/PASS_MAX_DAYS/ $2 <= 90{print $0}')
echo -e "[U-47]패스워드 최대 사용기간 설정"
if [ '$max_days' ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"
fi
echo -e "/etc/login.defs에 패스워드 최대 사용기간이 90일 이하여야 합니다.\n"
