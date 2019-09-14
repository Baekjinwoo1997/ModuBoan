#! /bin/bash

echo -e "[U-49]불필요한 계정 제거"
if [ $(cat /etc/passwd | egrep -c '(lp|uucp|nuucp)') -eq 0 ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"
fi
echo -e "/etc/passwd파일에 불필요한 사용자 계정을 삭제해야 합니다.\n"
