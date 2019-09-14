#!/bin/bash

#U-54

echo -e "\n[U-54] Session Timeout 설정"

F=/etc/profile

if [ $(cat /etc/profile | grep -c "TMOUT") -eq 1 ]; then
	TMOUT_=$(cat /etc/profile | grep TMOUT= | tr 'TMOUT=' ':' | awk -F: '{print $7}')
else TMOUT_=0
fi

if [ $TMOUT_ -ge 600 ] && [ $(cat $F | awk "/export TMOUT/" | grep -c "^export") ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "Session Timeout이 600초(10분) 이상으로 설정되어 있어야 합니다."

