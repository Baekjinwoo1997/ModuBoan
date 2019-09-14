#! /bin/bash

echo -e "\n\n[U-08]/etc/shadow 파일 소유자 및 권한 설정"
if [ -f $(find /etc/shadow -user root -perm 0400) ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -n -e "/etc/shadow의 소유자가 root이며 권한이 400이여야 합니다."
