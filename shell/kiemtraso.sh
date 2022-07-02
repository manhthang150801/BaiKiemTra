#!/bin/bash

case $2 in
'+')
let "tong= $1 + $3"
echo "Tong 2 so la: $tong";;
'-')
let "hieu= $1 - $3"
echo "hieu 2 so la: $hieu";;
'x') 
let "tich= $1 * $3"
echo "tich 2 so la: $tich";;
'/')
if [ $3 -eq 0 ]; then
echo "khong the chia cho khong"
else
let "thuong=$1/$3"
echo "thuong cua 2 so la: $thuong"
fi;;
*)
echo "nhap sai roi"
esac

