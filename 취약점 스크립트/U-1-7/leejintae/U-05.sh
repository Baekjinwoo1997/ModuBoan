#! /bin/bash


source myfunctions.sh

#[U-05]
echo "[U-05] root홈, 패스 디렉토리 권한 및 패스 설정"
#step1
if [[ "$(echo $PATH)" =~ "\." || "$(echo $PATH)" =~ "::" ]];then
	warning	
	echo "\$PATH변수 내에 . 또는 ::이 포함되어 있습니다."
else
	pass
	echo "\$PATH변수 내에 . 또는 ::이 포함되어 있지 않습니다."
fi
#step2
if [ "$(cat /root/.bash_profile | grep ".:PATH")" ];then
	warning
	echo "\$HOME/.bash_profile에 수정이 필요합니다."
	info
	echo ".:\$PATH 를 \$PATH로 수정해야 합니다."
else
	pass
	echo "\$PATH 설정이 안전합니다."
fi
echo -e -n "\n"