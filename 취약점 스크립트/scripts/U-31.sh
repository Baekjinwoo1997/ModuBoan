#!/bin/bash
echo -e "[U-31] 스팸 메일 릴레이 제한"
if [ -z 'ps -ef | grep sendmail | grep -v "grep' ]; then
  if [ -e "/etc/mail/sendmail.cf" ]; then
    if [ $(cat /etc/mail/sendmail.cf | grep -v "#" | grep "R$\*"| grep "Relaying denied" | grep -v "grep") ]; then
      echo -n -e "\033[34m[PASS]\033[0m"
    else 
		echo -n -e "\033[31m[WARN]\033[0m"
  		echo -n -e "sendmail.cf 설정파일을 열어서 주석을 제거하세요"
    fi
  else
    echo -n -e "\033[31m[WARN]\033[0m"
    echo -n -e "/etc/mail/sendmail.cf 파일이 없습니다."
  fi 
else 
  echo -n -e "\033[31m[WARN]\033[0m"
  echo  -e "sendmail 서비스를 사용하지 않을경우 서비스를 중지하여야합니다."
fi 
echo -e " " 

