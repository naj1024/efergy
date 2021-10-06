#!/bin/bash
# run with nohup to capture output for debug

cd /home/pi/efergy
rtl_fm -Alut -f433580000 -s200000 -r96000 -g10 | ./efergy -a0x0230ad -s -m 192.168.0.114:1883 power.log

