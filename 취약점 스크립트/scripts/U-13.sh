#! /bin/bash

echo -e "\n\n[U-13]SUID, SGID, Sticky bit 설정 및 권한 설정"
for i in $(find / -user root -type f \( -perm -4000 -o -perm -2000 \) 2>/dev/null); do
	if [ $i ]; then
		echo -n -e "\033[31m[WARN]\033[0m" #$i"
		break
	else echo -n -e "\033[34m[PASS]\033[0m"
	fi
done
echo -e "불필요한 SUID, SGID 설정을 제거해야합니다.\n"

