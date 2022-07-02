#!/bin/bash
echo "nhap vao so thu nhat"
read a
echo "nhap vao so thu hai"
read b
echo "nhap vao so thu ba"
read c
 if [ $a -gt $b -a $a -gt $c ]; then
echo "so lon nhat la $a"
elif [ $b -gt $a -a $b -gt $c ]; then
echo "so lon nhat la $b"
else
echo "so lon nhat la $c"
fi

