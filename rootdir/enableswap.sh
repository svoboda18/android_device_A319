#!/bin/sh
echo $((384*1024*1024)) > /sys/block/zram0/disksize
chmod 777 /system/bin/tiny_mkswap
chmod 777 /system/bin/tiny_swapon
chmod 777 /system/bin/tiny_swapoff
/system/bin/tiny_mkswap /dev/block/zram0
/system/bin/tiny_swapon /dev/block/zram0
