#!/bin/bash

print_color() 
{
	echo "color $i : $1 "
}

i=1

for color in red green blue white black ; do
	print_color "$color"
	(( i++ ))
done
