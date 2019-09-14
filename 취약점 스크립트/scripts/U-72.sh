#! /bin/bash

echo "[U-72] Apache 웹 서비스 정보 숨김"

if [ "$(cat /[Apache_Home]/conf/httpd.conf 2> /dev/null | grep -P "ServerTokens Prod")" ]; then
	if [ "$(cat /[Apache_Home]/conf/httpd.conf 2> /dev/null | grep -P "ServerSignature off")" ]; then
		 echo -n -e "\033[34m[PASS]\033[0m"
	else
		echo -n -e "\033[31m[WARN]\033[0m"
	fi
else
	echo -n -e "\033[31m[WARN]\033[0m"
fi

echo "헤더에 최소한의 정보를 제한 후 전송 해야합니다."
echo -e ""
