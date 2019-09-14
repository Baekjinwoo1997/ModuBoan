# !/bin/bash

echo -e "[U-25] NFS 접근 통제"

if [[ ! $(cat /etc/export 2>/dev/null) ]]
then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -e "NFS 접근 제어 파일이 없습니다"
	echo ""
	exit
fi

if [[ ! $(cat /etc/exports) ]]
then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -e "NFS 접근 제어 파일이 없습니다"
else
	if [[ $(cat /etc/exports | grep "root_squash") ]]
	then
		echo -n -e "\033[31m[WARN]\033[0m"
		echo -e "로컬 사용자와 원격 사용자 모두 루트 권한을 획득 할 수 있습니다. 수정하십시오"
	else
		echo -n -e "\033[31m[WARN]\033[0m"
		echo -e "NFS 서비스를 반드시 사용해야하는 파일인지 /etc/exports/를 다시 확인 하십시오 "
	fi
fi

echo ""
