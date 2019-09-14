#!/bin/bash

echo "[U-18] 허용할 호스트에 대한 접속 IP 주소 제한 및 포트 제한 설정 여부 점검"

cat /etc/hosts.deny | grep ALL
if [ $? -eq 0 ]; then
	echo -e "\033[34m[PASS]\033[0m xinetd 서비스에 대한 접근 제한 설정이 되어 있습니다."
else
	echo -e "\033[31m[WARN]\033[0m xinetd 서비스에 대한 접근 제한이 필요합니다."
fi

a=$(service iptables status)
b=$(cat /etc/sysconfig/iptables)
c=$(cat /etc/sysconfig/iptables.old)
if [[ $a =~ "not" ]]; then
	echo -e "\033[31m[WARN]\033[0m 방화벽이 동작하고 있지 않습니다.\n"
	exit
fi
if [ "$b" == "$c" ]; then
	echo -e "\033[31m[WARN]\033[0m 방화벽 정책이 기본값입니다.\n"
else
	echo -e "\033[34m[PASS]\033[0m 방화벽 정책이 1가지 이상 등록되어 있습니다.\n"
fi


