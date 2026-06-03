#!/bin/bash

declare -a name

name=(kim lee park choi)

echo ${name[0]}
echo ${name[1]}
echo ${name[2]}
echo ${name[3]}

echo ${#name[0]}
echo ${name[*]}
echo ${#name[*]}

name[2]=jung
name[4]="jae gal"
name[6]=gang

declare -a |grep name

echo ${name[*]}


