#! /bin/bash


source myfunctions.sh

#[U-06]
echo "[U-06] ���� �� ���丮 ������ ����"
if [[ !("$find / -nouser -print") || ("$find / -nouser -print | grep '�����ϴ�'") ]];then
   pass   
   echo "nouser"
else
   warning
   echo "nouser"
fi

if [[ !("$find / -nogroup -print") || ("$find / -nogroup -print | grep '�����ϴ�'") ]];then
   pass
   echo "nogroup"
else
   warning
   echo "nogroup"
fi
echo -e -n "\n"
