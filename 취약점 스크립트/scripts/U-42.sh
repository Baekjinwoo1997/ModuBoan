#! /bin/bash
source myfunctions.sh

#[U-42]
echo "[U-42] 최신 보안패치 및 벤더 권고사항 적용"
info
echo "다음과 같이 조치하십시오."
echo "STEP1. 하단의 사이트에서 해당하는 OS 보안패치 버전을 찾음"
echo "http://www.redhat.com/security/updates/"
echo "http://www.redhat.com/security/updates/eol/ (RedHat LINUX 9이하)"
echo "STEP2. 현재 사용중인 보안 Update 찾아 Download"
echo "STEP3. #rep -Uvh <package-name>"

echo -e -n "\n"
