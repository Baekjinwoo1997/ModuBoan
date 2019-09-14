#! /bin/bash

echo -e "\n\n[U-07]/etc/passwd 파일 소유자 및 권한 설정"
if [ $(find /etc/passwd -perm 0644) ] || [ $(find /etc/passwd -not -perm -0644) ]; then
	echo -n -e "\033[31m[WARN]\033[0m"
else echo -n -e "\033[34m[PASS]\033[0m"
fi
echo -n -e "/etc/passwd의 권한이 644이하여야 합니다."

