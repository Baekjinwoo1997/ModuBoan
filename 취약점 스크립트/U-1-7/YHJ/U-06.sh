#! /bin/bash

echo -e "[U-06] 파일 및 디렉터리 소유자 설정"

if [ ! $(find / -nouser -o -nogroup -print 2>/dev/null) ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "소유자가 존재하지 않는 파일이 없어야 합니다."
