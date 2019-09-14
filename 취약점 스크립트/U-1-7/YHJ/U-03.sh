#! /bin/bash

# U-03

F=/etc/pam.d/system-auth

echo -e "\n[U-03] 계정 잠금 임계값 제한" 
if [ $(cat $F | awk "/auth\trequired\tpam_tally.so\tdeny=5\tunlock_time=120\tno_magic_root/" | grep -c "^auth") -eq 1 ] && [ $(cat $F | awk "/account\trequired\tpam_tally.so\tno_magic_root\treset/" | grep -c "^account") -eq 1 ]
then
    echo -n -e "\033[34m[PASS]\033[0m"
	else echo -n -e "\033[31m[WARN]\033[0m"
	fi
	echo -e "/etc/pam.d/system-auth에 계정 잠금 임계값 설정이 존재해야 합니다."
