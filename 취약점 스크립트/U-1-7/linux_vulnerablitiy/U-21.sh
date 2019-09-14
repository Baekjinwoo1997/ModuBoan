# !/bin/bash

echo "-------------------------------------------------------"
echo -e "[U-21] r계열 서비스 비활성화"

FILE=/etc/xinetd.d/rlogin
FILE2=/etc/xinetd.d/rsh
FILE3=/etc/xinetd.d/rexec

RLOGIN=`cat $FILE | grep "disable" | awk '{print $3}'`
RLOGIN2=`cat $FILE2 | grep "disable" | awk '{print $3}'`
RLOGIN3=`cat $FILE3 | grep "disable" | awk '{print $3}'`

if [[ $RLOGIN == 'no' || $RLOGIN2 == 'no' || $RLOGIN3 == 'no' ]]
then
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -e "r명령어가 활성화 되어 있습니다"
else
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -e "r명령어가 비활성화 되어 있습니다."
fi

