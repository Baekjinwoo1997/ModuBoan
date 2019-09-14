#! /bin/bash
source myfunctions.sh

#[U-39]
echo "[U-39] Apache 링크 사용금지"
if [ -z "$(cat /etc/httpd/conf/httpd.conf | grep "Options" | grep "FollowSymLinks")" ];then
	pass
	echo "링크 사용금지 설정 양호"
else
	warning
	echo "링크 사용금지 설정이 필요합니다."
fi
echo -e -n "\n"
