#! /bin/bash

echo -e "[U-03]계정 잠금 임계값 설정"
if [ $(cat /etc/pam.d/system-auth | grep -v "#" | grep "auth\trequried\tpam_tally.so deny=5 unlock_time=120 no_magic_root") ]; then
	if [ $(cat /etc/pam.d/system-auth | grep -v "#" | grep "account\trequired\tpam_tally.so no_magic_root reset") ]; then	
		echo -n -e "\033[034m[PASS]\033[0m"
	else
		echo -n -e "\033[031m[WARN]\033[0m"
	fi
else
	echo -n -e "\033[031m[WARN]\033[0m"
fi
echo -e "/etc/pam.d/system-auth에 계정 잠금 설정이 존재해야 합니다.\n"