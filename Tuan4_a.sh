#!/bin/sh
num=0
date
set `date`
while [ $num -eq 0 ]
	do 
		echo "Nhap file:"
		read so
		if test -e "$so"
			then
				echo "file da ton tai"
					if test -f "$so"
						then 
							echo "Day la file thong thuong"
					else
						echo "Day khong la file thong thuong"
					fi
		else
			echo "file khong ton tai"
		fi
	done