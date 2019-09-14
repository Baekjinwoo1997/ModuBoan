#! /bin/bash

echo -e "[U-44]root 이외의 UID가 '0' 금지"
if [ $(cat /etc/passwd | awk -F: '{print $3}' | grep -c 0) -eq 1 ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"

fi
echo -e "/etc/passwd에 root 이외에 UID가 0인 계정이 존재해선 안됩니다.\n"
