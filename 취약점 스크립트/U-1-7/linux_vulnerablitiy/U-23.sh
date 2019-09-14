# !/bin/bash

echo "-------------------------------------------------------"
echo -e "[U-23] Dos 공격에 취약한 서비스 비활성화"

FILE=/etc/xinetd.d
ECHO1=${FILE}/echo-dgram
ECHO2=${FILE}/echo-stream
DISCARD1=${FILE}/discard-dgram
DISCARD2=${FILE}/discard-stream
DAYTIME1=${FILE}/daytime-dgram
DAYTIME2=${FILE}/daytime-stream
CHARGE1=${FILE}/chargen-dgram
CHARGE2=${FILE}/chargen-stream

if [[ $(cat $ECHO1 | grep "disable" | awk '{print $3}') == 'no' ||
      $(cat $ECHO2 | grep "disable" | awk '{print $3}') == 'no' ||
      $(cat $DISCARD1 | grep "disable" | awk '{print $3}') == 'no' ||
      $(cat $DISCARD2 | grep "disable" | awk '{print $3}') == 'no' ||
      $(cat $DAYTIME1 | grep "disable" | awk '{print $3}') == 'no' ||
      $(cat $DAYTIME2 | grep "disable" | awk '{print $3}') == 'no' ||
      $(cat $CHARGE1 | grep "disable" | awk '{print $3}') == 'no' ||
      $(cat $CHARGE2 | grep "disable" | awk '{print $3}') == 'no' ]]
then
	echo -n -e "\033[31m[WARN]\033[0m"
	echo -e "Dos 공격에 취약한 서비스가 활성화 되어있습니다"
else
	echo -n -e "\033[34m[PASS]\033[0m"
	echo -e "Dos 공격에 취약한 서비스가 비활성화 되어있습니다"
fi
