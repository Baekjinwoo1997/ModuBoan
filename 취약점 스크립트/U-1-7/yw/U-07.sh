#! /bin/bash

ps=$(ls -l /etc/passwd | grep rw-r--r-- | grep root)
echo -e "/etc/passwd파일 소유자 및 권한 설정"
if [ '$ps' ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"

fi
echo -e "/etc/passwd파일 소유자가 root가 아니거나 파일의 권한이 644이하가 아닌 경우 설정을 변경해야 합니다.\n"
