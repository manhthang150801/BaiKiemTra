#!/bin/bash
echo "nhap vao 2 so can tinh: "
read a
read b
echo "nhap vao phep tinh: +,-,*,/ "
read pheptinh
case $pheptinh in
'+')
let "tong=$a+$b"
echo " $a + $b= $tong";;
'-')
let "hieu= $a-$b"
echo "$a - $b = $hieu";;
'*')
let "tich= $a*$b"
echo "$a x $b =$tich";
'/'
if [ $b -eq 0 ]; then
echo "khong chia cho 0";
else 
let "thuong $a/$b"
echo "$a / $b =$thuong"
fi;;
*)
echo "khong hop le"
esac

