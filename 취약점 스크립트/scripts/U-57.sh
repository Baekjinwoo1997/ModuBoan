#!/bin/bash
#sudo cat umask 022 export umask >>  /etc/profile
if [ -z "$INPUTRC" -a ! -f "$HOME/.inputrc" ] ; then 
		INPUTRC=/etc/inputrc
fi
export PATH USER LOGNAME MAIL HOSTNAME HISTSIZE INPUTRC

for i in /etc/profile.d/*.sh ; do
	if [ -r "$i" ]; then
		if [ "PS1" ]; then
			. $i
		else
			. $i > dev/null 2>&1
		fi
	fi
done
unset i
unset pathmunge

TMOUT=99999
export TMOUT
umask 022
export umask


