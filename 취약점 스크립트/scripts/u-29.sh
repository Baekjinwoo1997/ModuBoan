#!/bin/bash
echo -e "[U-29] tftp, talk 서비스 비활성화"
if [ -z'cat /etc/inetd.conf | grep "tftp|talk|ntalk" | grep -v "grep"' ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else 
	echo -n -e "\033[31m[WARN]\033[0m"
fi

echo  -e "vi /etc/inetd.conf을 통해서 tftp, talk, ntalk 서비스 주석 처리를 해주세요"
echo -e " "
