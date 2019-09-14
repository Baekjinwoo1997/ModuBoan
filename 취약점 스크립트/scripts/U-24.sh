# !/bin/bash

echo -e "[U-24] NFS 서비스 비활성화"

FILE=/etc/rc.d/rc*.d/*

if [[ $(ls -al $FILE | grep "nfs" 2>/dev/null) ]]
then
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -e "nfs 서비스가 활성화 되어 있습니다"
else
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -e "nfs 서비스가 비활성화 되어 있습니다."
fi

echo ""
