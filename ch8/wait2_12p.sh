#!/bin/bash
date +%s

sleep 20 &
sleep 10 &
pid=$!

wait $pid  #pid에 $!을 통해 가장 최근의 백그라운드 프로세스 번호를 넣는다"

date +%s
