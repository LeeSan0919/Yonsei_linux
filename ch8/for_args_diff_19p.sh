#!/bin/sh

echo '--- $* ---'
for x in $*     #모든인수 공백기준 나눔
do
    echo "[$x]"
done

echo '--- $@ ---'
for x in $@    # 모든인수 " 없으면 $*와 유사
do
    echo "[$x]"
done

echo '--- "$*" ---'
for x in "$*"  #모든 인수를 하나의 문자열로 합침
do    
    echo "[$x]"
done

echo '--- "$@" ---'
for x in "$@"  #각 인수를 각각 따로 보존
do
    echo "[$x]"
done
