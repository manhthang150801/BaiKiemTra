#!/bin/sh
num=0
while [ $num -eq 0 ]
	do 
		echo "Nhap ten file goc:"
		read manh
		if test -e "$manh"
			then
				echo "file da ton tai"
				echo "Nhap ten dau file moi:"
				read thang
					if test -f "$manh"
						then 
							mv -- "$manh" "$thang.txt"
							echo "Doi thanh cong"
							exit 0
					else
						echo "Khong thanh cong"
					fi
		else
			echo "file khong ton tai"
		fi
	done

