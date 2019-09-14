#! /bin/bash

echo -e "\n\n[U-02]패스워드 복잡성 설정"
common= $(cat /etc/pam.d/system-auth | grep -P "password\trequisite")
if [ $($common | grep "lcredit\|ucredit\|dcredit\|ocredit\|minlen\|retry\|difok") ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -n -e "/etc/pam.d/system-auth에 패스워드 복잡성 설정이 존재해야 합니다."
