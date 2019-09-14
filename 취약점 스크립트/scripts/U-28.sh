#!/bin/bash
echo -e "[U-28] NIS, NIS+ 점검"
if [ -z 'ps -ef | egrep "ypserv|ypbind|ypxfrd|rpc.yppasswdd|rpc.ypupdated" | grep -v "egrep"' ]; then
    echo -n -e "\033[34m[PASS]\033[0m"
else 
    echo -n -e "\033[31m[WARN]\033[0m"
    echo -e "kill -9 을 이용하여 서비스 데몬을 중지시키세요"
echo -e " "
fi 
