# !/bin/bash

echo "-------------------------------------------------------"
echo -e "[U-07] /etc/passwd 파일 소유자 및 권한 설정"

FILE=/etc/passwd
PERM=`ls -l $FILE | awk '{print $3}'`
PERM2=`ls -l $FILE | awk '{print $1}'`

if [[ $PERM == 'root' ]]
then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -e "/etc/passwd의 소유자는 root 입니다"
else
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -e "/etc/passwd의 소유자가 root가 아닙니다"
fi

if [[ $(find /etc/passwd -perm -644)  ]]
then
	if [[ $(find /etc/passwd -perm 644) ]]
	then
		echo -n -e "\033[34m[PASS]\033[0m"
		echo -e "권한 설정이 제대로 되어있습니다."
	else
		echo -n -e "\033[31m[WARN]\033[0m"
		echo -e "권한 설정을 수정하세요"
	fi
else
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -e "권한 설정이 제대로 되어있습니다."
fi
