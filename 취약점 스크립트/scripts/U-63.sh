#! /bin/bash
echo -e "[U-63]FTP계정 shell 제한" 

#/etc/passwd파일에서 ftp로 시작되면서 /bin/false로 끝나는 파일이면 PASS 아니면 WARN과 경고문출력
if [ -z 'cat /etc/passwd | grep "^ftp" | grep "/bin/false$" | grep "/sbin/nologin$"' ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -n -e "ftp 계정에 /bin/false 쉘이 부여되어 있습니다."
else 
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -n -e "FTP계정의 로그인 쉘 부분인 계정 맨 마지막에 /bin/false 부여 및 변경하셔야합니다."
fi

echo -e "\n"
