#! /bin/bash

echo -e "[U-04] 패스워드 파일 보호" 

Test_x=$(cat /etc/passwd | gawk -F: '{print $2}')
LENGTH_1=`expr length "$Test_x" + 1`
LENGTH_1=`expr $LENGTH_1 / 2`
LENGTH_2=$(cat /etc/passwd | wc -l)

if [ "$(cat /etc/shadow)" ] || [ $LENGTH_1 -eq $LENGTH_2 ]; then

	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "쉐도우 패스워드를 사용하거나, 패스워드를 암호화하여 저장해야 합니다."
