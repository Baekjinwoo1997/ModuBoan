#! /bin/bash
echo -e "[U-67]SNMP 서비스 활성화 여부 점검" 

if [ -z 'ps -ef | grep snmp | grep -v "grep"' ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -n -e "SNMP서비스를 사용하지 않습니다."
else
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -n "불필요한 SNMP 서비스를 사용하지 않는 경우 서비스를 중지해야합니다."
fi
echo -e "\n"
