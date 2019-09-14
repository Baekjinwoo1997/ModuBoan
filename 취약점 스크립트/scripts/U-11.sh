#! /bin/bash

#/etc/syslog.conf파일이 존재하지 않음
#sys계정이 존재하지 않음
echo -e "\n\n[U-11]/etc/syslog.conf 파일 소유자 및 권한 설정"
if [ -f $"/etc/syslog.conf" ]; then
	#if [ -f $(find /etc/syslog.conf \( -user bin -o -user sys -o -user root \)) ]; then
	if [ -f $(find /etc/syslog.conf \( -user bin -o -user root \)) ]; then
		if [ -f $(find /etc/syslong.conf -not -perm -0644) ] || [ -f $(find /etc/syslong.conf -perm 0644) ]; then
			echo -n -e "\033[34m[PASS]\033[0m"
		else echo -n -e "\033[31m[WARN]\033[0m"
		fi
	else echo -n -e "\033[31m[WARN]\033[0m"
	fi
	echo -n -e "/etc/syslog.conf의 소유자가 root이며 권한이 644이하여야 합니다."
elif [ -f $"/etc/rsyslog.conf" ]; then
	#if [ -f $(find /etc/rsyslog.conf \( -user bin -o -user sys -o -user root \)) ]; then
	if [ -f $(find /etc/rsyslog.conf \( -user bin -o -user root \)) ]; then
		if [ -f $(find /etc/rsyslog.conf -not -perm -0644) ] || [ -f $(find /etc/rsyslog.conf -perm 0644) ]; then
			echo -n -e "\033[34m[PASS]\033[0m"
		else echo -n -e "\033[31m[WARN]\033[0m"
		fi
	else echo -n -e "\033[31m[WARN]\033[0m"
	fi
	echo -n -e "/etc/rsyslog.conf의 소유자가 root이며 권한이 644이하여야 합니다."
fi


