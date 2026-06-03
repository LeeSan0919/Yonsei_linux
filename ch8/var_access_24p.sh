#!/bin/bash

unset x

echo "1) x가 없을 때 \${x-default}:"
echo ${x-default}
echo "x=[$x]"

echo

unset x
echo "2) x가 없을 때 \${x=default}:"
echo ${x=default}
echo "x=[$x]"

echo

x=linux
echo "3) x가 있을 때 \${x+alt}:"
echo ${x+alt}

echo

unset y
echo "4) y가 없을 때 \${y?error}:"
echo ${y?"y is required"}
