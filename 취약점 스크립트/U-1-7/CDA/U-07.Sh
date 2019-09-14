#!/bin/bash

echo "[U-07] 패스워드 파일 소유자 및 권한 설정"

a=$(find /etc/passwd -perm 644 | wc -l)
if [ $a -ne 0 ]; then
	echo -e "\033[34m[PASS]\033[0m 퍼미션 값이 올바르게 부여되어 있습니다."
else
	echo -e "\033[31m[WARN]\033[0m 권한 점검이 필요합니다."
fi


