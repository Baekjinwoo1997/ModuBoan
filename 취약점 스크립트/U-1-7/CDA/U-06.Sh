#!/bin/bash

echo "[U-06] 파일 및 디렉터리 소유자 점검"

a=$(find / -nouser -print 2> /dev/null | wc -l)
if [ $a -eq 0 ]; then
	echo -e "\033[34m[PASS]\033[0m 소유자가 존재하지 않는 파일이 확인되지 않습니다."
else
	echo -e "\033[31m[WARN]\033[0m 파일 소유자 점검이 필요합니다."
fi

b=$(find / -nogroup -print 2> /dev/null | wc -l)
if [ $b -eq 0 ]; then
	echo -e "\033[34m[PASS]\033[0m 소유 그룹이 존재하지 않는 파일이 확인되지 않습니다."
else
	echo -e "\033[31m[WARN]\033[0m 파일 소유 그룹 점검이 필요합니다."
fi
