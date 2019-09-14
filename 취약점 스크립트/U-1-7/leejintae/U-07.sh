#! /bin/bash


source myfunctions.sh

#[U-07]
echo "[U-07] /etc/passwd ���� ������ �� ���� ����"
user=$(ls -al /etc/passwd | awk '{print $3}')
mod=$(ls -al /etc/passwd | awk '{print $1}')
mod=(${mod:1:3} ${mod:4:3} ${mod:7:3})
mod_value=(0 0 0)
index=0
for i in ${mod[@]};do
   if [[ "$i" =~ "r" ]];then
      mod_value[$index]=$((${mod_value[$index]}+4))
   fi

   if [[ "$i" =~ "w" ]];then
      mod_value[$index]=$((${mod_value[$index]}+2))
   fi
   if [[ "$i" =~ "1" ]];then
                mod_value[$index]=$((${mod_value[$index]}+1))
        fi
   index=$(($index+1))
done
result=${mod_value[0]}${mod_value[1]}${mod_value[2]}

if [[ $user != "root" || $result -gt 644 ]];then
   warning
   echo "passwd ������ �����ڰ� root�� �ƴϰų� ������ 644 �����Դϴ�."
else
   pass
   echo "passwd ������ �����ڿ� ������ �����մϴ�."

fi
echo -e -n "\n"
