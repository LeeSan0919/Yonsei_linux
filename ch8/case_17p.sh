#!/bin/bash

read -p "메뉴 번호를 입력하시오" num

case $num in
	1)
		date ;;
	2)
		pwd ;;
	3)
		whoami ;;
	*)
		echo "iligal menu" ;;

esac
