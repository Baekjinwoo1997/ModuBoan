#! /bin/bash

echo "[U-71] expn, vrfy 명령어 제한"

if [ $(cat /etc/mail/sendmail.cf 2> /dev/null | grep -P "noexpn|novrfy") ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else
	echo -n -e "\033[31m[WARN]\033[0m"
fi

echo "SMTP 서비스 설정파일에 noexpn, novrfy 옵션을 추가해야합니다."
echo -e ""
