# !/bin/bash

echo -e "[U-22] cron 파일 소유자 및 권한 설정"

FILE=/etc/cron.deny

if [[ $(cat $FILE 2>error_log1) ]]
then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo "cron 파일이 없습니다"
	rm ./error_log1
	return 
elif [[ $(ls -l $FILE | awk '{print $3}') == 'root' ]]
then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -e "cron 파일 소유자가 root 입니다"
else
	echo -n -e "\033[31m[PASS]\033[0m"
	echo -e "cron 파일 소유자가 root가 아닙니다"
fi

if [[ $(find $FILE -perm -640) ]]
then
	if [[ $(find $FILE -perm 640) ]]
	then
		echo -n -e "\033[34m[PASS]\033[0m" 
		echo -e "cron 접근제어 파일 소유자의 권한이 640 이하입니다"
	else
		echo -n -e "\033[31m[WARN]\033[0m"
		echo -e "cron 접근제어 파일 소유자의 권한이 640이하가 아닙니다"
	fi
else
	echo -n -e "\033[34m[PASS]\033[0m" 
	echo -e "cron 접근제어 파일 소유자의 권한이 640 이하입니다"
fi

echo ""
