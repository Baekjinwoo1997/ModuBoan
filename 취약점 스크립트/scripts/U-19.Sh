#!/bin/bash

echo "[U-19] Finger 서비스 비활성화 여부 점검"

if [ ! -e $"/etc/xinet.d/finger" ]; then
	echo -e "\033[34m[PASS]\033[0m finger 서비스를 이용하지 않습니다.\n"
else
	echo -e "\033[31m[WARN]\033[0m finger 서비스에 대한 점검이 필요합니다.\n"	
fi

#a=$(head -n 11 /etc/xinetd.d/finger | grep "yes")
#if [ $? -eq 0 ]; then
#	echo -e "\033[34m[PASS]\033[0m finger 서비스가 비활성화 되어 있습니다."
#else
#	echo -e "\033[31m[WARN]\033[0m finger 서비스가 활성화 되어 있습니다."
#fi

