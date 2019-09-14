#! /bin/bash

echo -e "\n\n[U-03]계정 잠금 임계값 설정"
if [ $(cat /etc/pam.d/system-auth | grep -P "auth\trequired" | grep "pam_tally.so\|deny\|unlock_time\|no_magic_root") ] && [ $(cat /etc/pam.d/system-auth | grep -P "account\trequired" | grep "pam_tally.so\|no_magic_root\|reset") ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -n -e "/etc/pam.d/system-auth에 계정 잠금 임계값 설징이 존재해야 합니다."

