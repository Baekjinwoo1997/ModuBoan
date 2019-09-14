#! /bin/bash

echo -e "\n\n[U-05]root홈, 패스 디렉터리 권한 및 패스 설정"
if [ $( echo $PATH | awk -F [:] '{print $1}') != "." ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -n -e "\$PATH에 현재경로가 존재하지 않아야 합니다."

