#!/bin/bash

trap 'echo "SIGINT received"; exit 1' 2
trap 'echo "SIGTERM received"; exit 1' 15

echo "PID is $$"

while true
do
        echo "running..."
        sleep 2
done
