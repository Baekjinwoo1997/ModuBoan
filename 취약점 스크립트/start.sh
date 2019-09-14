#! /bin/bash

source myfunctions.sh
PATH1=./scripts
chmod 755 $PATH1/*
scripts=$(ls $PATH1/)

for script in $scripts
do
	if [ $script != "myfuntions.sh" ]; then
		$PATH1/$script
	fi
done
