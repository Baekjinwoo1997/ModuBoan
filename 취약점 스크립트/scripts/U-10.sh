#! /bin/bash

#/etc/(x)inetd.conf파일이 존재하지 않음
echo -e "\n\n[U-10]/etc/(x)inetd.conf 파일 소유자 및 권한 설정"
flag=1
if [ -f $"/etc/inetd.conf" ]; then
	if [ -f $(find /etc/inetd.conf -user root -perm 0600) ]; then
		for i in $(find /etc/inetd.d/ -user root -perm 0600); do
			if [ ! $i ]; then
				echo -n -e "\033[31m[WARN]\033[0m"
				flag=0
				break
			fi
		done
		if [ $flag -eq 1 ]; then
			echo -n -e "\033[34m[PASS]\033[0m"
		fi
	fi
	echo -n -e "/etc/(x)inted.conf의 소유자가 root이며 권한이 600이여야 합니다."
elif [ -f $"/etc/xinetd.conf" ]; then
	if [ -f $(find /etc/xinetd.conf -user root -perm 0600) ]; then
		for i in $(find /etc/xinetd.d/ -user root -perm 0600); do
			if [ ! $i ]; then
				echo -n -e "\033[31m[WARN]\033[0m"
				flag=0
				break
			fi
		done
		if [ $flag -eq 1 ]; then
			echo -n -e "\033[34m[PASS]\033[0m"
		fi
	fi
	echo -n -e "/etc/xinetd.d/의 소유자가 root이며 권한이 600이여야 합니다."
else
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -n -e "/etc/(x)inted.conf파일이 존재하지 않습니다."
fi
