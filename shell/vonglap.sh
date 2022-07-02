#!/bin/bash
let "num = 0"
while [ $num -lt 100 ];do
let "tong=$tong + $num "

echo "$tong"
done
