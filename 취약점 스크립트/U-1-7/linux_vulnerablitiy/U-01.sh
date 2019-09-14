# !/bin/bash
# 1.1 root 계정 원격 접속 제한
# copyright jaeho jung

echo "-------------------------------------------------------"
echo -e "[U-01]계정 원격 접속 제한"

if [[ $(cat /etc/pam.d/login | grep "pam_limits.so") ]]
then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -e "해당 설정 존재!!"
else
	echo -n -e  "\033[31m[WARN]\033[0m"
	echo -e "/etc/pam.d/log에 pam_securetty.so 설정이 존재해야 합니다."
fi

if [[ ! $(cat /etc/securetty | grep pts) ]]
then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -e "해당 설정 존재"
else
	echo -n -e  "\033[31m[WARN]\033[0m"
	echo -e "/etc/securetty에 pts설정이 존재하지 않아야 합니다."
fi
	
