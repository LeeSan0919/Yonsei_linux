#!/bin/bash

let a=10+20
echo $a

let "b = a + 20"
echo $b

let "c = b > a"
echo "c=$c"

let "d = 10 / 3"
echo "d=$d"

if let b>a ; then
	echo "b the $b is bigger than a the $a"
else
	echo "b the $b is not bigger than a the $a"
fi


