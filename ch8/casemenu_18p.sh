#!/bin/bash

cat << MENU
1. date
2. pwd
3. whoami
4. pwd
5-12. hostname
MENU


read -p "Please select the Menu: " num

case $num in
	1)
		date ;;
	
	2|4)
		pwd ;;
	
	3)
		whoami ;;
	
	[5-9]|1[0-2])
		hostname ;;
	
	*)
		echo "iligal menu" ;;

esac
