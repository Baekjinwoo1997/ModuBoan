#! /bin/bash
source myfunctions.sh

#[U-41]
echo "[U-41] Apache 웹 서비스 영역의 분리"
if [ -n "$(cat /etc/httpd/conf/httpd.conf | grep "DocumentRoot \"/usr/local/apache/htdocs\"")" ];then
	warning
	echo "웹서버의 루트 디렉토리가 /usr/local/apache/htdocs 입니다."

elif [ -n "$(cat /etc/httpd/conf/httpd.conf | grep "DocumentRoot \"/usr/local/apache2/htdocs\"")" ];then
	warning
	echo "웹서버의 루트 디렉토리가 /usr/local/apache2/htdocs 입니다."
elif [ -n "$(cat /etc/httpd/conf/httpd.conf | grep "DocumentRoot \"/var/www/html\"")" ];then
	warning
	echo "웹서버의 루트 디렉토리가 /var/www/html 입니다."
else
	pass
	echo "웹 서버의 루트 디렉토리가 안전합니다."
fi
echo -e -n "\n"
