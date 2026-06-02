#!/bin/sh

echo "처음:"
echo "1=$1"
echo "2=$2"
echo "전체=$*"

shift

echo "shift 후:"
echo "1=$1"
echo "2=$2"
echo "전체=$*"
