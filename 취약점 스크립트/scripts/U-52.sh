#! /bin/bash


# U-52

echo -e "\n[U-52] 동일한 UID 금지"

# passwd 파일에 동일한 UID를 가지는 계정이있는지 확인합니다.
CHECK_UID=$(cat /etc/passwd | awk -F: '{print $3}' | sort | uniq -c | awk '{print $1}')

if [ ! $(echo $CHECK_UID | grep -v "1" ) ]; then
echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "/etc/passwd 파일 내에 UID가 동일한 사용자 계정이 존재하지 않아야 합니다"


