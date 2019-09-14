#! /bin/bash

echo -e "\n\n[U-06]파일 및 디렉터리 소유자 설정"
if [ ! $(find / -nouser 2>/dev/null | head -1 ) ] && [ ! $(find / -nogroup 2>/dev/null | head -1 ) ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -n -e "소유자가 존재하지 않는 파일이 없어야 합니다."

