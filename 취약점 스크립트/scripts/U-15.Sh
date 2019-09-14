#!/bin/bash

echo "[U-15] 불필요한 world writable 파일 존재 여부 점검"

c=$(find / -perm 666 -type f -print 2> /dev/null | wc -l)
if [ $c -ne 0 ]; 
then
	echo -e "\033[31m[WARN]\033[0m "$c" 개의 world writable 파일 점검이 필요합니다.\n"
else
	echo -e "\033[34[PASS]\033[0m world writable 파일이 존재하지 않습니다.\n"
fi

