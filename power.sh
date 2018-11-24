#!/bin/sh

#VALGRIND="valgrind --leak-check=full --log-file=valgrind.txt -v"

OPTIONS="-a0x0230ad -s -rpower.rrd power.log"

cd /home/pi/power
rtl_fm -Alut -f433580000 -s200000 -r96000 -g10 2> /dev/null | ./efergy $OPTIONS >> pwr  
 

