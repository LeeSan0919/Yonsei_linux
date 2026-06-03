#!/bin/bash

while true ; do
	if ! read line; then
		break
	elif [ "$line" == "" ] ; then
		continue
	fi
	echo $line 
done
echo Bye~
