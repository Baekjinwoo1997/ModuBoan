#!/bin/bash

echo "[U-03] 사용자 로그인 실패 임계값 설정 점검"

a=$(cat /etc/pam.d/system-auth | grep -E "deny.[0-4]" | wc -l)
if [ $a -ne 0 ]; then
	echo -e "\033[31m[WARN]\033[0m 로그인 실패 임계값 점검이 필요합니다."
else
	echo -e "\033[34m[PASS]\033[0m 5회 이상 인증 시래시 계정 잠금 설정이 올바르게 되어 있습니다."
	b=$(cat /etc/pam.d/system-auth | grep "reset" | wc -l)
	if [ $b -ne 0 ]; then
	echo -e "\033[34m[PASS]\033[0m 부가 설정이 올바르게 되어 있습니다."
else
	echo -e "\033[34m[WARN]\033[0m 부가 설정 점검이 필요합니다."
fi
fi
