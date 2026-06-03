#!/bin/bash

echo "1. (( ))"

((a = 10 + 20))
echo "a=$a"
echo

echo "2. \$(( ))"
echo $((10 + 20 - 1))
c=$((40 * 50))
echo "c=$c"
echo

echo "3. 조건문에서의 사용"

if (( b > a )) ; then
	echo "b is bigger than a"
else
	echo "b is not bigger than a"
fi

echo
echo "4. 반복문에서의 사용"

i=1
while (( i <= 10 )) ; do
	echo -n "$i"
	(( i++ ))
done
echo

