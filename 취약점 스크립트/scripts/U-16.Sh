#!/bin/bash

echo "[U-16] 존재하지 않거나 불필요한 다바이스 점검"
a=$(find /dev -type f -exec ls -l {} \;)
if [ $? -eq 0 ]; then
	echo -e "\033[31m[WARN]\033[0m 불필요한 디바이스 점검이 필요합니다.\n"
else
	echo -e "\033[34m[PASS]\033[0m 불필요한 파일이 확인되지 않았습니다.\n"
fi

