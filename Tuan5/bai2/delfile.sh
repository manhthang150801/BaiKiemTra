#!/bin/bash
#vui long tao file test truoc roi moi xoa
echo -e -n "\n\tNhap ten file can xoa: "
read ten_file
if [ $ten_file != 'delfile.sh' ]
	then
	if [ -e $ten_file ]
		then
			echo -e -n "\n\t5 dong dau trong file $ten_file: "
			echo -e "\n`head -n 5 $ten_file`"
			echo -e "\n\t==============================="
			echo -e "\n\t1. Xoa file"
			echo -e "\n\t2. Khong xoa va thoat"
			echo -e -n "\n\tNhap lua chon: "
			read lc
			case $lc in
				1)
					echo "`rm $ten_file`"
					echo -e "\t=> Đã xoa file $ten_file"
					;;
				2)
					echo -e "\tKhong xoa file $ten_file"
					;;
				*)
					echo -e "\tLua chon khong hop le!"
					;;
			esac
	else
		echo "$ten_file khong ton tai"
	fi
else
	echo -e "\t$ten_file la file dang chay khong the xoa!"
fi