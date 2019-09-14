#! /bin/bash

echo -e "[U-45]root 계정 su 제한"
if [ $(cat /etc/group | grep  wheel) ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"
fi
echo -e "/etc/group에 'wheel' 그룹 및 그룹 내 구성원이 존재해야 합니다."

if [ $(cat /etc/pam.d/su | grep -v "#" | grep '(auth|required)' | grep "pam_wheel.so debug group=wheeli\|pam_wheel.so use_id") ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"
fi
echo -e "/etc/pam.d/su에 su 명령어 사용 허용 그룹 설정이 존재해야 합니다.\n"
