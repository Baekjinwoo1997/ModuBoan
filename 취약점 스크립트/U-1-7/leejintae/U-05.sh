#! /bin/bash


source myfunctions.sh

#[U-05]
echo "[U-05] rootȨ, �н� ���丮 ���� �� �н� ����"
#step1
if [[ "$(echo $PATH)" =~ "\." || "$(echo $PATH)" =~ "::" ]];then
	warning	
	echo "\$PATH���� ���� . �Ǵ� ::�� ���ԵǾ� �ֽ��ϴ�."
else
	pass
	echo "\$PATH���� ���� . �Ǵ� ::�� ���ԵǾ� ���� �ʽ��ϴ�."
fi
#step2
if [ "$(cat /root/.bash_profile | grep ".:PATH")" ];then
	warning
	echo "\$HOME/.bash_profile�� ������ �ʿ��մϴ�."
	info
	echo ".:\$PATH �� \$PATH�� �����ؾ� �մϴ�."
else
	pass
	echo "\$PATH ������ �����մϴ�."
fi
echo -e -n "\n"