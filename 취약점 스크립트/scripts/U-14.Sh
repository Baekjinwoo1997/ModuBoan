#!/bin/bash
echo "[U-14] 사용자, 시스템 시작파일 및 환경파일 소유자 및 권한 설정"

echo " 점검 디렉터리: $HOME"

ls -alR /home/$user | grep ".*" > test01.txt
a=$(grep -e "\<.........x" ./test01.txt | wc -l)
if [ $a -ne 0 ];
then
	echo -e "\033[31m[WARN]\033[0m $a 개의 파일이 일반 사용자 쓰기 권한이 부여되어 있습니다."
else
	echo -e "\033[34m[PASS]\033[0m 일반 사용자에게 쓰기 권한이 부여되어 있지 않습니다."
fi

ls -alR /home/$user | grep ".*" > ./test01.txt
grep -v "$user" ./test01.txt | wc -l > test02.txt
b=$(cat ./test02.txt) 
if [[ "$user" =~ "$b" ]]; then
        echo -e "\033[34m[PASS]\033[0m 소유자가 모두 일치합니다.\n"
else         
        echo -e "\033[31m[WARN]\033[0m $b 개 파일의 소유자가 일치하지 않습니다.\n"
fi
    
rm ./test01.txt
rm ./test02.txt





