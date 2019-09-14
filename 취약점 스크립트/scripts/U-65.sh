#! /bin/bash

echo -e "[U-65]ftpusers 파일 root 계정이 포함 여부 점검" 

if [ -z 'cat /etc/vsftpd/ftpusers | grep "root"' ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -n -e "FTP 서비스가 비활성화 되어 있거나, 활성화 시 root 계정접속이 차단되었습니다."
else
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -n -e "ftpusers 파일에 root 계정이 없어야 합니다."
fi

echo -e "\n"
