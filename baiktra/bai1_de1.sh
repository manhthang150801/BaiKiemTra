#!/bin/bash
echo -n "Nhap a= "
read a
echo -n "Nhap b= "
read b
echo -n "Nhap c= "
read c
d=`expr $b \* $b - 4 \* $a \* $b`
if [ $d -lt 0 ] 
	then 
		echo "Phuong trinh vo nghiem"
	elif [ $d -eq 0 ]
		then
			x=`expr -$b / (2 \* $a)`
			echo "Phuong trinh co nghiem x1=x2=$x"
		else
			tu1=`expr -$b + sqrt($d)`
			tu2=`expr -$b - sqrt($d)`
			mau=`expr 2 \* $a`;
			x1=`expr $tu1 \ $mau`
			x2=`expr $tu2 \ $mau`
			echo "Phương trình co nghiem x1= $x1 và x2= $x2"
fi
exit 0