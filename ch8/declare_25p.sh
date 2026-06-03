#!/bin/bash

echo "1. 일반 변수"
x=10+20
echo "x=$x"

echo

echo "2. 정수 변수"
declare -i y
y=10+20
echo "y=$y"

echo

echo "3. 정수가 아닌 문자열"
declare -i z
z=abc
echo "z=$z"

echo

echo "4. 정수 속성 해제"
declare +i y
y=10+20
echo "y=$y"


