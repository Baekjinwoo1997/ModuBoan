#! /bin/bash

echo -e "[U-04]패스워드 파일 보호"
if [ -f /etc/shadow ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"

fi
echo -e "/etc/shadow파일이 존재해야 합니다."

if [ ! $(cat /etc/passwd | awk -F: '{print $2}' | grep -v x) ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"

fi
echo -e "/etc/passwd파일 내 두 번째 필드가 'x'로 표시되어야 합니다.\n"