#! /bin/bash

echo -e "[U-05] root홈, 패스 디렉터리 권한 및 패스 설정"

LINE=$(echo $PATH | tr ':' '\n' | grep -v "^/")

echo $LINE
# "/"로 시작하지 않는 환경 변수가 존재하는 경우
if [ ! $(echo $PATH | tr ':' '\n' |grep -v "^/") ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "\$PATH에 현재경로가 존재하지 않아야 합니다."
