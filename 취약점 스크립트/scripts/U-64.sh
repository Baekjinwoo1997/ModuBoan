#! /bin/bash

echo -e "[U-64]ftpusers 파일 소유자 및 권한 설정" 

#파일권한자가 root 이면서 파일권한이 640이하면 PASS 둘중에 하나라도 아니면 WARN과 경고문 출력

if [ ! -e $"/etc/vsftpd/ftpusers" ]; then
   echo -n -e "\033[31m[WARN]\033[0m"
   echo -n -e "ftpusers 폴더가 없습니다."
else
   if [ $(stat -c "%U" /etc/vsftpd/ftpusers) = "root" ]; then
      if [ $(stat -c "%a" /etc/vsftpd/ftpusers) -le "640" ]; then
         echo -n -e "\033[34m[PASS]\033[0m"
	 echo -n -e "ftpusers 파일의 소유자가 root이고, 권한이 640이하입니다."
      else
         echo -n -e "\033[31m[WARN]\033[0m"
         echo -n -e "파일권한이 640이하이어야 합니다."
      fi
   else 
      echo -n -e "\033[31m[WARN]\033[0m"
      echo -n -e "ftpusers 파일 소유자가 root이어야 합니다."
   fi
fi
echo -e "\n"
