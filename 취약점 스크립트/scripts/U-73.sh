#! /bin/bash

echo  -e "[U-73] 정책에 따른 시스템 로깅 설정"

STR=$(cat /etc/rsyslog.conf)
pass=0
if [ "$(echo $STR | grep "\*\.info;mail\.none;authpriv\.none;cron\.none /var/log/messages")" ]; then
	pass=$(($pass+1))
fi

if [ "$(echo $STR | grep "authpriv\.\* /var/log/secure")" ]; then
	pass=$(($pass+1))
fi

if [ "$(echo $STR | grep "mail\.\* /var/log/mail")" ]; then
	pass=$(($pass+1))
fi

if [ "$(echo $STR | grep "cron\.\* /var/log/cron")" ]; then
	pass=$(($pass+1))
fi

if [ "$(echo $STR | grep "\*\.alert /dev/console")" ];then
	pass=$(($pass+1))
fi

if [ "$(echo $STR | grep "\*\.emerg *")" ]; then
	pass=$(($pass+1))
fi

if [ ${pass} -eq 6 ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else
	echo -n -e "\033[31m[WARN]\033[0m"
fi

echo -e "로그 기록 정책을 수립하고, 정책에 따라 rsyslog.conf 파일을 설정 해야 합니다."
echo -e "" 
