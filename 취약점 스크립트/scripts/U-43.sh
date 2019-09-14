#! /bin/bash
source myfunctions.sh


#[U-43]
echo "[U-43] 로그의 정기적 검토 및 보고"
info
echo "다음과 같이 조치하십시오."
echo "STEP1. 정기적인 로그 검토 및 분석 주기 수립"
echo " -utmp,wtmp,btmp 등의 로그를 확인하여 마지막 로그인 시간, 접속IP, 실패이력 등을 확인하여 계정 탈취 공격 여부를 검토"
echo " -sulog를 확인하여 허용된 계정 외에 su 명령어를 통해 권한상승을 시도하였는지 검토"
echo " -xferlog를 확인하여 비인가자의 ftp 접근 여부를 검토"
echo "STEP2. 로그 분석에 대한 결과 보고서 작성"
echo "STEP3. 로그 분석 결과 보고서 체계 수립"
echo ""
