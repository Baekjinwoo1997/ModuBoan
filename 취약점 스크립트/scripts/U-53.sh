#! /bin/bash

# U-53

echo -e "\n[U-53] 사용자 shell 점검"

# passwd 파일에서 로그인이 불필요한 계정들의 쉘 경로를 확인.
CHECK=$( cat /etc/passwd | egrep "^daemon|^bin|^sys|^adm|^listen|^nobody|^nobidy4|^noaccess|^diag|^operator|^games|^gopher" | grep -v "admin" | awk -F: '{print $7}' )

# 쉘 경로가 /bin/false 또는 /sbin/nologin이 아닌 계정이 존재할 경우 경고
count=0
for i in $CHECK; do
if [ ! $i = "/sbin/nologin" ] && [ ! $i = "/bin/false" ]; then
count=`expr $count + 1`; fi
done

if [ $count -eq 0  ]; then
echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e " 로그인이 불필요한 계정은 로그인 쉘을 부여받지 않아야 합니다."


