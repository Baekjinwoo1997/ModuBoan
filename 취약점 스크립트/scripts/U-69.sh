#! /bin/bash
echo "[U-69] 로그온 시 경고 메시지 제공"
if [ $(cat /etc/motd 2> /dev/null) ]; then
        if [ "$(cat /etc/issue.net 2> /dev/null)" ]; then
                if [ $(cat /etc/vsftpd/vsftpd.conf 2> /dev/null) ]; then
                        if [ $(cat /etc/mail/sendmail.cf 2> /dev/null) ]; then
                                if [ $(cat /etc/named.conf 2> /dev/null) ]; then
                                        echo -n -e "\033[34m[PASS]\033[0m"
                                else
                                        echo -n -e "\033[31m[WARN]\033[0m"
                                fi
                        else
                                echo -n -e "\033[31m[WARN]\033[0m"
                        fi
                else
                        echo -n -e "\033[31m[WARN]\033[0m"
                fi
        else
                echo -n -e "\033[31m[WARN]\033[0m"
        fi
else
        echo -n -e "\033[31m[WARN]\033[0m"
fi

echo -e "서버 및 Telnet, FTP, SMTP, DNS 서비스에 로그온 메시지가 설정 되어 있어야 합니다."
echo ""

