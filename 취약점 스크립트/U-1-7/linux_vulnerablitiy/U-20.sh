# !/bin/bash

echo "-------------------------------------------------------"
echo -e "[U-20] Anonymous FTP 비활성화"

FILE=/etc/passwd
FTP=`cat $FILE | grep "ftp"`
FTP2=`cat /etc/vsftpd/vsftpd.conf | grep "anonymous_enable=YES"`

if [[ $FTP ||  $FTP2  ]]
then
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -e "익명 ftp 접속이 차단되지 않았습니다"
else
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -e "익명 ftp 접속이 차단되어 있습니다"
fi

