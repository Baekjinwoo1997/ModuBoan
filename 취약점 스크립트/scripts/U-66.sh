#! /bin/bash

echo -e "[U-66]at파일 소유자 및 권한 설정" 

#at.allow
if [ ! -e $"etc/at.allow" ]; then
   echo -n -e "\033[31m[WARN]\033[0m"
   echo -e "at.allow 파일이 없습니다."
#   exit
else
   if [ $(stat -c "%U" /etc/at.allow) = "root" ]; then
      if [ $(stat -c "%a" /etc/at.allow) -le "640" ]; then
         echo -n -e "\033[34m[PASS]\033[0m"
	 echo -e "at 접근제어 파일의 소유자가 rot이고, 권한이 640이하입니다."
#         exit
      else
         echo -n -e "\033[31m[WARN]\033[0m"
         echo -e "at.allow 파일권한이 640이하이어야 합니다."
#         exit
      fi
   else 
      echo -n -e "\033[31m[WARN]\033[0m"
      echo -e "at.allow 파일 소유자가 root이어야 합니다."
#      exit
   fi
fi
#at.deny

if [ ! -e $"etc/at.deny" ]; then
   echo -n -e "\033[31m[WARN]\033[0m"
   echo -e "at.deny 파일이 없습니다."
#   exit
else
   if [ $(stat -c "%U" /etc/at.deny) = "root" ]; then
      if [ $(stat -c "%a" /etc/at.deny) -le "640" ]; then
         echo -n -e "\033[34m[PASS]\033[0m"
#         exit
      else
         echo -n -e "\033[31m[WARN]\033[0m"
         echo -n -e "at.deny 파일권한이 640이하이어야 합니다."
#         exit
      fi
   else 
      echo -n -e "\033[31m[WARN]\033[0m"
      echo -n -e "at.deny 파일 소유자가 root이어야 합니다."
#      exit
   fi
fi
echo ""
