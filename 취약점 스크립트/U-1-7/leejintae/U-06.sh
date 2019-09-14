#! /bin/bash


source myfunctions.sh

#[U-06]
echo "[U-06] 파일 및 디렉토리 소유자 설정"
if [[ !("$find / -nouser -print") || ("$find / -nouser -print | grep '없습니다'") ]];then
   pass   
   echo "nouser"
else
   warning
   echo "nouser"
fi

if [[ !("$find / -nogroup -print") || ("$find / -nogroup -print | grep '없습니다'") ]];then
   pass
   echo "nogroup"
else
   warning
   echo "nogroup"
fi
echo -e -n "\n"
