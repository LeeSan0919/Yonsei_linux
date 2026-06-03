#!/bin/bash

select color in red blue green quit ; do
	if [ "$color" = "" ] ; then
		echo "Wrong option"
		continue
	fi

	if [ "$color" = "quit" ] ; then
		echo "EXIT"
		break
	fi

	
	echo "Number : $REPLY"
	echo "COLOR : $color"

done
