#! /bin/bash

echo -e "[U-06]파일 및 디렉터리 소유자 설정"
if [ ! $(find / -nouser -o nogroup -xdev -ls 2>/dev/null) ]; then
	echo -n -e "\033[034m[PASS]\033[0m"
else
	echo -n -e "\033[031m[WARN]\033[0m"

fi
echo -e "소유자가 존재하지 않는 불필요한 파일이나 디렉터리를 삭제해야 합니다.\n"