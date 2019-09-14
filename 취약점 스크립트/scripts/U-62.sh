#!/bin/bash

echo -e "[U-62] 불필요한 FTP 서비스 비활성화" 

#ftp, vsftpd, proftp 서비스가 있으면 WARN과 경고문 출력, 없으면 PASS출력(expect root)
if [ -z 'ps -ef | egrep "ftp|vsftpd|proftp" | grep -v "^root"' ]; then
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -n -e "불필요한 FTP 서비스를 비활성화해야합니다."
else
	echo -n -e "\033[34m[PASS]\033[0m"
        echo -n -e "FTP 서비스가 비활성화 되어 있어야합니다."
fi
echo -e "\n "

