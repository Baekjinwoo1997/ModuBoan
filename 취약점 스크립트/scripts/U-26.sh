
#!/bin/bash

echo -e "[U-26] automountd 제거"
if [ !$(ps -ef | grep "automountd" | grep -v "grep") ];then	
    echo -n -e "\033[34m[PASS]\033[0m"
else echo -n -e "\033[31m[WARN]\033[0m"
fi
echo -e "automountd에 대한 설정이 비활성화 되어 있어야 합니다"
echo -e " "
