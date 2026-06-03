#!/bin/bash

i=0

while [ $i -lt 10 ] ; do
	i=`expr $i + 1`

	if [ $i -eq 3 ] ; then
		continue  #현 반복의done까지의 나머지 부분을 생략, 다음 반복으로
	fi

	echo $i

done
