#! /bin/bash

string=$PATH
echo -e "[U-05]root홈, 패스 디렉터리 권한 및 패스 설정"
if [ ! $(echo ${string:0:2} | grep "^\.\|::") ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"

fi
echo -e "/etc/profile에 존재하는 PTAH변수에 '.'과 '::'를 포함시키지 않아야 합니다.\n"