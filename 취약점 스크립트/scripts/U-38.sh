#! /bin/bash
source myfunctions.sh

#[U-38]
echo "[U-38] Apache 불필요한 파일 제거"
if [ -n "$(ls -ld /etc/httpd/htdocs/manual 2>/dev/null)" ];then
	warning
	echo "[Apache_home]/htdocs/manual 이 존재합니다."

else
	pass
	echo "[Apache_home/htdocs/manual이 존재하지 않습니다"
fi

if [ -n "$(ls -ld /etc/httpd/manual 2>/dev/null)" ];then
	warning
	echo "[Apache_home]/manual 이 존재합니다."
else
	pass
	echo "[Apache_home]/manual 이 존재하지 않습니다."
fi
echo -e -n "\n"

