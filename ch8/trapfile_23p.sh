#!/bin/bash

tempfile="/tmp/$$.tmp"

trap 'echo "종료 처리 중..."; rm -f "$tempfile"; exit 1' 2 15

echo "temporary data" > "$tempfile"
echo "tempfile: $tempfile"

while true
do
        sleep 1
done
