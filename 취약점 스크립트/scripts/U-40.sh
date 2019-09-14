#! /bin/bash
source myfunctions.sh

#[U-40]
echo "[U-40] Apache 파일 업로드 및 다운로드 제한"
if [ -n "$(cat /etc/httpd/conf/httpd.conf | grep "LimitRequestBody 5000000")" ];then
	pass
	echo "파일 업로드 및 다운로드 용량이 5MB로 제한되어 있습니다."
else
	warning
	echo "파일 업로드 및 다운로드 용량 제한이 필요합니다."
fi
echo -e -n "\n"
