# !/bin/bash
# 패스워드 파일 보호

echo "-------------------------------------------------------"
echo -e "[U-04] 패스워드 파일 보호"

if [[ ! -a /etc/shadow ]]
then
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -e "/etc/shadow 파일이 존재해야 합니다"
else
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -e "/etc/shadow 파일이 존재합니다"
fi

count=0

for data in $(cat /etc/passwd | awk -F: '{print $1}')
do
	if [[ data = 'x' ]]
	then
		count=count+1
		if [[ $count = $(cat /etc/passwd | wc -l) ]]
		then
			echo -n -e "\033[34m[PASS]\033[0m"
			echo -e "/etc/passwd의 패스워드 부분이 x로 표시됩니다."
			break
		fi
	else
		echo -n -e "\033[31m[WARN]\033[0m"
		echo -e "/etc/passwd의 패스워드 부분이 x로 표시되어야 합니다"
		break
	fi
done


