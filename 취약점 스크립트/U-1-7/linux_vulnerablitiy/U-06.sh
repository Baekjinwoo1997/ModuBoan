# !/bin/bash
echo "-------------------------------------------------------"
echo -e "[U-06] 파일 및 디렉터리 소유자 설정"

if [[ $(find / -nouser -print > /dev/null 2>&1) ||  $(find / -nogroup -print > /dev/null 2>&1) ]]
then
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -e "소유자가 불분명한 파일이나 디렉토리가  있습니다."
else
	echo -n -e "\033[34m[PASS]\\033[0m"
	echo -e "소유자가 불분명한 파일이나 디렉토리가  없습니다."
fi


