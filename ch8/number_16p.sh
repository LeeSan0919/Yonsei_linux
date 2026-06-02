#!/bin/bash

read -p "숫자를 입력하시오" x

if [ $x -eq 5 ]; then
	echo number is 5

elif [ $x -gt 5 ]; then
	echo number is bigger then 5

else
	echo number is smaller then 5

fi
