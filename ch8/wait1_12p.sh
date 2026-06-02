#!/bin/bash
date +%s
sleep 20 &
sleep 10 &
wait 
date +%s
