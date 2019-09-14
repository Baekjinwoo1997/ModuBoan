#!/bin/bash
echo "[U-02] 패스워드 복잡성 설정"

a=$(cat /etc/pam.d/system-auth | grep "pam_cracklib.so")
if [[ $a =~ cracklib.so ]];
	then echo -e "\033[34m[PASS]\033[0m PAM 설정을 점검합니다."
if [[ $a =~ minlen=[^0-7] ]];
	then echo -e "\033[34m[PASS]\033[0m 패스워드 길이가 8 이상입니다."
else
	echo -e "\033[31m[WARN]\033[0m 패스워드 길이가 8 이하입니다."
fi
if [[ $a =~ retry=[^0-2] ]];
	then echo -e "\033[34m[PASS]\033[0m 패스워드 재입력 횟수가 3 이상입니다."
else
	echo -e "\033[31m[WARN]\033[0m 패스워드 재입력 횟수 점검이 필요합니다."
fi	
if [[ $a =~ lcredit=[^?0] ]];
	then echo -e "\033[34m[PASS]\033[0m 소문자 설정 값이 1 이상입니다."
else
	echo -e "\033[31m[WARN]\033[0m 소문자 설정 값 점검이 필요합니다."
fi
if [[ $a =~ ucredit=[^?0] ]];
	then echo -e "\033[34m[PASS]\033[0m 대문자 설정 값이 1 이상입니다."
else
	echo -e "\033[31m[WARN]\033[0m 대문자 설정 값 점검이 필요합니다."
fi
if [[ $a =~ dcredit=[^?0-1] ]];
	then echo -e "\033[34m[PASS]\033[0m 숫자 설정 값이 2 이상입니다."
else
	echo -e "\033[31m[WARN]\033[0m 숫자 설정 값 점검이 필요합니다."
fi
if [[ $a =~ ocredit=[^?0-1] ]];
	then echo -e "\033[34m[PASS]\033[0m 특수문자 설정 값이 2 이상입니다."
else
	echo -e "\033[31m[WARN]\033[0m 특수문자 설정 값 점검이 필요합니다."
fi
else
	echo -e "\033[31m[WARN]\033[0m 패스워드 복잡성 설정이 되어 있지 않습니다."
fi
