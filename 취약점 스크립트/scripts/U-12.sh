#! /bin/bash

#sys계정이 존재하지 않음
echo -e "\n\n[U-12]/etc/services 파일 소유자 및 권한 설정"
#if [ -f $(find /etc/services \( -user bin -o -user sys -o -user root \)) ]; then
if [ -f $(find /etc/services \( -user bin -o -user root \)) ]; then
	if [ -f $(find /etc/services -not -perm -0644) ] || [ -f $(find /etc/services -perm 0644) ]; then
		echo -n -e "\033[34m[PASS]\033[0m"
	else echo -n -e "\033[31m[WARN]\033[0m"
	fi
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -n -e "/etc/services의 소유자가 root이며 권한이 644이하여야 합니다."

