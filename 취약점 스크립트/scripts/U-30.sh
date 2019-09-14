#!/bin/bash
echo -e "[U-30] sendmail 버전 점검"
if [ -z 'ps -ef | grep "sendmail" | grep -v "grep"' ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else 
	echo -n -e "\033[31m[WARN]\033[0m"
	echo  -e " 서비스를 중지하거나 http://www.sendmail.org/에서 보안 패치를 주기적으로 설치해주어야 합니다"
fi 
echo -e ""

