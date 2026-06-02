#!/bin/sh
i=1

for arg
do
	echo argument $i : $arg
	i=`expr $i + 1`
done
