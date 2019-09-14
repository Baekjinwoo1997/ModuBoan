#!/bin/bash

echo "[U-05] 환경 변수 파일 점검"
echo "현재 사용자 : $HOME"
a=$(cat /etc/profile | grep -E "PATH[=][$]PATH[:][$]")
	if [ $? -eq 0 ]; then
	echo -e "\033[34m[PASS]\033[0m 환경 변수 파일에 "."이 포함되어 있지 않습니다."
else
	echo -e "\033[31m[WARN]\033[0m 환경 변수 파일 점검이 필요합니다."
fi

b=$(cat $HOME/.bash_profile | grep "PATH[=][$]PATH[:][$]HOME")
	if [ $? -eq 0 ]; then
	echo -e "\033[34m[PASS]\033[0m 사용자 환경 변수 파일이 올바르게 설정되어 있습니다."
else
	echo -e "\033[31m[WARN]\033[0m 사용자 환경 변수 파일 점검이 필요합니다."
fi
