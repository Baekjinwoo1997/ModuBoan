# !/bin/bash

echo "-------------------------------------------------------"
echo -e "[U-05] root홈, 패스 디렉터리 권한 및 패스 설정"

ROOTPATH=$PATH

if [[ $(echo $ROOTPATH | egrep '^:|::|^.:|:.:') ]]
then
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -e "환경변수에 현재 디렉토리가 포함되어 있습니다"
else
	echo  -e "\033[34m[PASS]\033[0m"
fi

