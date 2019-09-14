#! /bin/bash

# U-55

echo -e "\n[U-55] hosts.lpd 파일 소유자 및 권한 설정"

if [ ! $(ls -l /etc/hosts.lpd 2>/dev/null) ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
elif [ $(ls -l /etc/hosts.lpd | grep -c hosts) -eq 0 ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
elif [ $(ls -l /etc/hosts.lpd | awk '{print $3}') = "root" ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "hosts.lpd 파일이 존재하지 않거나, 파일의 소유자가 root여야 합니다.\n"
