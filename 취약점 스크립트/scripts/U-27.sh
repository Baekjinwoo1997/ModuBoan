#!/bin/bash

echo -e "[U-27] RPC 서비스 확인"
if [ -z 'cat /etc/inetd.conf | grep -v "#" | egrep "rpc.cmsd|rpc.ttdbserverd|sadmind|rusersd|walld|sprayd|rstatd|rpc.nisd|rexd|rpc.pcnfsd|rpc.statd|rpc.ypupdated|rpc.rquotad|kcms_server|cachefsd"' ]; then
      echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "해당 라인에 '#'(주석 처리)를 해야 합니다"
echo -e " "
