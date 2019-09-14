# !/bin/bash

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

cat /etc/xinetd.d/echo-stream 2>jj

if [[ ! $(cat $ECHO1 2>error_log1) || ! $(cat $ECHO2 2>error_log2) ]]
then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo "/etc/xinetd.d/echo 관련 서비스가 없습니다"
elif [[ ! $(cat $DISCARD1 2>error_log3) || ! $(cat $DISCARD2 2>error_log3) ]]; then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo "/etc/xinetd.d/discard 관련 서비스가 없습니다"
elif [[ ! $(cat $DAYTIME1 2>error_log4) || ! $(cat $DAYTIME2 2>error_log5) ]]; then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo "/etc/xinetd.d/daytime 관련 서비스가 없습니다"
elif [[ ! $(cat $CHARGE1 2>error_log6) || ! $(cat $CHARGE2 2>error_log7) ]]; then
	echo -n -e "\033[34m[PASS]\033[0m"
	echo "/etc/xinetd.d/chargen 관련 서비스가 없습니다"
elif [[ $(cat $ECHO1 | grep "disable" | awk '{print $3}') == 'no' ||
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

rm -f ./error_log* 2>/dev/null

echo ""
