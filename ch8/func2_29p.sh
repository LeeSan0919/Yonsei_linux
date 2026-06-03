#!/bin/bash

print_color()
{
        echo "color $i : $1"
}

i=1

for color in "$@"
do
        print_color "$color"
        i=$((i + 1))
done
