#! /bin/bash

# U-50
echo -e "[U-50] 관리자 그룹에 최소한의 계정 포함"

for gid_ in $(cat /etc/group); do
check=$(echo $gid_ | awk -F: '{print $3}')
if [ $check -eq 0 ]; then
gid_0=$gid_
fi
done

SAFE_="root:x:0:root"

if [ $gid_0 = $SAFE_ ]; then
echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "관리자 그룹에 불필요한 계정이 등록되어 있지 않아야 합니다."


