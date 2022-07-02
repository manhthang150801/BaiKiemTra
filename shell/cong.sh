#!/bin/bash
let "num=0"
while [ $num -lt 10 ]; do
echo $num
let "num=$num+1"
done

