#!/bin/bash

echo "[U-04] 패스워드 파일 암호화 점검"

a=$(cat /etc/login.defs | grep "ENCRYPT_METHOD")
b=$(authconfig --test | grep sha512)

if [[ $a =~ SHA512|MD5 ]]; then
	if [[ $b =~ sha512 ]]; then
	echo -e "\033[34m[PASS]\033[0m 패스워드가 암호화 되어 있습니다."
else
	echo -e "\033[31m[WARN]\033[0m 패스워드가 보호되고 있지 않습니다."
fi
fi


