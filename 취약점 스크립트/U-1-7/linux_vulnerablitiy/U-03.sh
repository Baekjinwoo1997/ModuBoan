# !/bin/bash
# 계정 잠금 임계값 설정

echo "-------------------------------------------------------"
echo -e " [U-03] 계정 잠금 임계값 설정"

if [[ $(cat /etc/pam.d/system-auth | grep -w 'deny=[0-5]') ]]
then
	echo -e "\033[34m[PASS]\033[0m"
else
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -e "/etc/pam.d/system-auth에 계정 임계값 설정이 되있어야 합니다."
fi
