#! /bin/bash

# U-51

echo -e "\n[U-51] 계정이 존재하지 않는 GID 금지"

CHECK_U51="false"

echo -n -e "\033[33m[INFO]\033[0m"

echo "아래의 기준에 맞게 점검합니다."
echo "- 삭제 기준 : 불필요한 그룹이 존재하는 경우 다음과 같은 보안설정방법에 따라 그룹을 제거함"
echo "- 보안설정방법 : # groupdel <group_name>"

if [ $CHECK_U51 = "true" ]; then
echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "시스템 관리나 운용에 불필요한 그룹이 존재하지 않아야 합니다."
