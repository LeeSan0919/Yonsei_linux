#!/bin/bash
echo "first arg: $1"
echo "second arg: $2"
echo $#
echo $?
echo $$
tempfile=/tmp/$$.tmp
echo $tempfile
sleep 5 &
echo $!
echo $*
