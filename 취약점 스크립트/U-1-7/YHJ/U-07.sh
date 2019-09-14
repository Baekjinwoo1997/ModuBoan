#! /bin/bash

echo -e "[U-07] /etc/passwd 파일 소유자 및 권한 설정"

CHECK_MOD=$(ls -al /etc/shadow | awk '{print $1}')
CHECK_UID=$(ls -al /etc/shadow | awk '{print $3}')

echo $CHECK_MOD
echo $CHECK_UID

if [ $CHECK_MOD = "-------r--." ] && [ $CHECK_UID = 'root' ]; then
echo -n -e "\033[34m[PASS]\033[0m"
	else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "패스워드 파일의 소유자가 root여야 합니다."
