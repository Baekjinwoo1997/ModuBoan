#!/bin/bash
# ps -ef | grep yp
# rm -r /var/yp/blue.org
# rm /etc/ethers /etc/netgroup /etc/timezone /etc/bootparams
# vi /etc/nsswitch.conf #설정 삭제

#Start-Lockdown

chkconfig --list ypbind 2>/dev/null | egrep -e '[2345]:on'
if [ $? -eq 0 ]; then
	echo '==================================================='
	echo ' Disable NIS'
	echo '==================================================='
	service ypbind stop > /dev/null
	chkconfig --level 2345 ypbind off
	rm -r /var/yp/blue.org
	rm /etc/ethers /etc/netgroup /etc/timezone /etc/bootparams	
fi




