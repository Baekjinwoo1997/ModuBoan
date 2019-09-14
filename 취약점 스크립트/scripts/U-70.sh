#! /bin/bash

echo "[U-70] NFS 설정파일 접근 권한"

if [ "$(ls -al /etc/exports | grep "rw-r--r--. 1 root")" ]; then

        echo -n -e "\033[34m[PASS]\033[0m"
else
        echo -n -e "\033[31m[WARN]\033[0m"
fi

echo "NFS 접근제어 설정파일의 소유자 및 파일 권한 설정이 필요합니다." 
echo -e ""
