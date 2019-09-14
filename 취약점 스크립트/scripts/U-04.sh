#! /bin/bash

echo -e "\n\n[U-04]패스워드 파일 보호"
flag=1
for i in $(cat /etc/passwd | grep root | awk -F [:] '{print $1$2}'); do
	if [ $i == "rootx" ]; then
		echo -n -e "\033[34m[PASS]\033[0m"
		flag=0
		break
	fi
done
if [ $flag -eq 1 ]; then
	echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "/etc/passwd에 쉐도우 패스워드 설정이 존재해야 합니다 ."
if [ -f /etc/shadow ]; then
		echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -n -e "/etc/shadow가 존재해야 합니다."
