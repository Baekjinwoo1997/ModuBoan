#! /bin/bash

echo -e "\n\n[U-09]/etc/hosts 파일 소유자 및 권한 설정"
if [ -f $(find /etc/hosts -user root -perm 0600) ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -n -e "/etc/hosts의 소유자가 root이며 권한이 600이여야 합니다."
