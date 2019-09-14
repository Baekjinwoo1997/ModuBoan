# !/bin/bash
# U-02 패스워드 복잡성 설정

echo "-------------------------------------------------------"
echo -e "[U-02] 패스워드 복잡성 설정"

if [[ $(cat /etc/pam.d/system-auth | egrep 'lcredit=-1|ucredit=-1' | grep "dcredit=-1" | grep "minlen=10"]) || $(cat /etc/pam.d/system-auth | egrep 'lcredit=-1|ucredit=-1' | grep "ocredit=-1" | grep 'minlen=10') ]]
then
	echo -e "\033[34m[PASS]\033[0m"
elif [[ $(cat /etc/pam.d/system-auth | egrep 'lcredit=-1|ucredit=-1' | grep "dcredit=-1" | grep "ocredit=-1" | grep "minlen=8") || $(cat /etc/pam.d/system-auth | egrep 'lcredit=-1|ucredit=-1' | grep "ocredit=-1" | grep "dcredit=-1" | grep "minlen=8") ]]
then
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -e "/etc/pam.d/system.auth에서 영문,숫자,특수부호 3가지를 섞어서 만들어야 더 안전합니다!"
else
	echo -n -e "\033[31m[WARN]\033[0m"
        echo -e "/etc/pam.d/system.auth에 패스워드 복잡성 설정이 되어있어야 합니다!"
fi

