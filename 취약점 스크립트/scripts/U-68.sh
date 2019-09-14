#! /bin/bash

echo -e "[U-68]SNMP 서비스 Community String의 복잡성 설정"

if [ "$(cat /etc/snmp/snmpd.conf 2> /dev/null | grep "^com2sec notConfigUser" | grep public)" ]; then
	echo -n -e "\033[31m[WARN]\033[0m"
else
	echo -n -e "\033[34m[PASS]\033[0m"
fi

echo -e "Community String 값 설정을 변경해야 합니다."
echo -e ""
