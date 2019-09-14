#! /bin/bash

# U-01

echo -e "\n[U-01] 계정 원격 접속 제한" 
if [ $(cat /etc/securetty | grep -c "^pts") -eq 0 ]; then
echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "/etc/securtty에 pts설정이 존재하지 않아야 합니다."

if [ $(cat "/etc/pam.d/login" | awk '/auth required pam_securetty.so/' | grep -c "^auth") -eq 1 ]; then
echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -n -e "/etc/pam.d/login에 pam_securetty.so설정이 존재해야 합니다."
