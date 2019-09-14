#!/bin/bash

echo "[U-17] $HOME/.rhost 사용 금지 점검"


if [ -f $HOME/.rhosts ]; then
	echo -e ""
else
	echo -e "\033[34m[PASS]\033[0m 해당 서비스를 이용하지 않습니다.\n"
fi
exit
fi
a=$(find $HOME/.rhosts -perm 600 | wc -l)
if [ $a -ne 0 ]; then
	echo -e "\033[34m[PASS]\033[0m 해당 파일의 권한이 올바르게 설정되어 있습니다.\n"
else
	echo -e "\033[31m[WARN]\033[0m 해당 파일의 권한 점검이 필요합니다.\n"
fi

b=$(ls -al $HOME/.rhosts)
if [[ $b =~ $HOME ]]; then
	echo -e "\033[34m[PASS]\033[0m 해당 파일의 소유자가 $HOME 입니다.\n"
else
	if [[ $b =~ root ]]; then
		echo -e "\033[34m[PASS]\033[0m 해당 파일은 관리자 소유 입니다.\n"
	else
		echo -e "\033[31m[WARN]\033[0m 해당 파일의 소유자 및 소유 권한 점검이 필요합니다.\n"
	fi
fi


