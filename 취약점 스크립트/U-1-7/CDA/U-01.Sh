#!/bin/bash
echo "[U-01] 관리자 계정 원격 접속 제한"

a=$(cat /etc/securetty | grep "pts*")
if [ $? -eq 0 ]; then
	echo -e "\033[31m[RWAN]\033[0m 관리자 계정의 원격 접속 제한이 필요합니다."
else
	echo -e "\033[34m[PASS]\033[0m 관리자 계정의 원격 접속 제한이 설정되어 있습니다."
fi

b=$(cat /etc/pam.d/login | grep "pam_securetty.so" | grep "auth")
if [ $? -eq 0 ]; then
	echo -e "\033[34m[PASS]\033[0m PAM 모듈 설정이 되어 있습니다."
else
	echo -e "\033[31m[RWAN]\033[0m PAM 인증 설정이 필요합니다."
fi


