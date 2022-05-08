#!/bin/bash
# called by systemd efergy.service 

RTL_FM_OPTS="-Alut -f433580000 -s200000 -r96000 -g10" 
EFERGY_OPTS="-a0x0230ad -s -m 192.168.0.114:1883 power.log"

cd /home/pi/efergy

echo "/usr/bin/rtl_fm $RTL_FM_OPTS | ./efergy $EFERGY_OPTS"
/usr/bin/rtl_fm $RTL_FM_OPTS | ./efergy $EFERGY_OPTS
 
