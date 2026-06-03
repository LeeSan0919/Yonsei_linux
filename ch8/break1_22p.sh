#!/bin/bash

i=1

while [ $i -le 10 ] ; do
	echo $i

	if [ $i -eq 5 ]; then
		break
	fi

	i=`expr $i + 1`
done

echo "end"
