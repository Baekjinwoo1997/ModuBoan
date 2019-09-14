#! /bin/bash

echo -e "[U-02] 패스워드 복잡성 설정" 

F=/etc/pam.d/system-auth
STRING=$(cat $F | awk "/password\trequisite/")
CHECK=0

Test_lcredit=$(echo $STRING | sed -r 's/.*(lcre[^[:blank:]]*).*$/\1/')
Test_ucredit=$(echo $STRING | sed -r 's/.*(ucredit[^[:blank:]]*).*$/\1/')
Test_dcredit=$(echo $STRING | sed -r 's/.*(dcredit[^[:blank:]]*).*$/\1/')
Test_ocredit=$(echo $STRING | sed -r 's/.*(ocredit[^[:blank:]]*).*$/\1/')
Test_minlen=$(echo $STRING | sed -r 's/.*(minlen[^[:blank:]]*).*$/\1/')
Test_retry=$(echo $STRING | sed -r 's/.*(retry[^[:blank:]]*).*$/\1/')
Test_difok=$(echo $STRING | sed -r 's/.*(difok[^[:blank:]]*).*$/\1/')

echo $Test_lcredit

if [ ${Test_lcredit} == "lcredit=-1" ]; then CHECK=`expr $CHECK + 1`; else echo "WARN : lcredit"; fi
if [ ${Test_ucredit} = "ucredit=-1" ]; then CHECK=`expr $CHECK + 1`; else echo "WARN : ucredit"; fi
if [ ${Test_dcredit} = "dcredit=-1" ]; then CHECK=`expr $CHECK + 1`; else echo "WARN : dcredit"; fi 
if [ ${Test_ocredit} = "oredit=-1" ]; then CHECK=`expr $CHECK + 1`; else echo "WARN : ocredit"; fi
if [ ${Test_minlen} = "minlen=8" ]; then CHECK=`expr $CHECK + 1`; else echo "WARN : minlen"; fi
if [ " ${Test_retry} = "retry=3" " ]; then CHECK=`expr $CHECK + 1`; else echo "WARN : retry"; fi
if [ " ${Test_difok} = "difok=N" " ]; then CHECK=`expr $CHECK + 1`; else echo "WARN : difok"; fi

if [ $CHECK -eq 7 ]; then
	echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "/etc/pam.d/system-auth에 패스워드 복잡성 설정이 존재해야 합니다."
