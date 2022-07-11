#!/bin/bash
function remove_file(){
	for name_file in $@
	do
		if [ $name_file != 'delfile.sh' ]
			then
			if [ -e $name_file ]
				then
					echo -e -n "\n\t5 dong dau trong file $name_file: "
					echo -e "\n`head -n 5 $name_file`"
					echo -e "\n\t==============================="
					echo -e "\n\t1. Xoa file"
					echo -e "\n\t2. Khong xoa va thoat"
					echo -e -n "\n\tNhap lua chon: "
					read choice
					case $choice in
						1)
							echo "`rm $name_file`"
							echo -e "\t=> Đã xoa file $name_file"
							;;
						2)
							echo -e "\tKhong xoa file $name_file"
							;;
						*)
							echo -e "\tLua chon khong hop le!"
							;;
					esac
			else
				echo "$name_file khong ton tai"
			fi
		else
			echo -e "\t$name_file la file dang chay khong the xoa!"
		fi
	done 
}
function kt_thumuc(){
	if [ -d "$1" ]
		then
			echo -n "$1 là thu muc va "
			if [ -w "$1" ]
				then 
					echo "co quyen ghi"
			else 
				echo "khong co quyen ghi"
			fi
	else 
		echo "`mkdir $1`"
		echo "Da tao thu muc $1"
	fi
}
function coppy(){
	if [ -f $1 ]
		then 
			echo "`cp $1 $2/`"
			count=$(($count + 1))
	else
		echo "File $1 khong ton tai"
	fi
}
function cp_file(){
	echo -n "Nhap vao thu muc dich: "
	read thumuc
	kt_thumuc $thumuc
	count=0
	for file in $@
		do
			coppy $file $thumuc
	done
	echo "Ban da coppy $count file vao thu muc $thumuc"
}
function count_file(){
	so_file=0
	so_tm=0
	so_symbolic_link=0
	so_hard_link=0
	file_khac=0
	for name in `ls $1`
		do
			if [ -L $1/$name ]
				then
					so_symbolic_link=$((so_symbolic_link+1))
			elif [ "$(stat -c %h -- "$1/$name")" -gt 1 ]
				then
					so_hard_link=$((so_hard_link+1))
			elif [ -f $1/$name ]
				then 
					so_file=$((so_file+1))
			elif [ -d $1/$name ]
				then
					so_tm=$((so_tm+1))
			else
				file_khac=$((file_khac+1))
			fi
	done
	echo -e "So file la: $so_file"
	echo -e "\nSo thu muc là: $so_tm"
	echo -e "\nSo symbolic link là: $so_symbolic_link"
	echo -e "\nSo hardlink là: $so_hard_link"
	echo -e "\nSo file khong thuoc cac dang tren: $file_khac"
}
function kiemtra_tm(){
	if [ -d $1 ]
		then
			echo -n "$1 la thu muc va "
			if [ -r $1 ]
				then 
					echo "co quyen doc"
					count_file $1
			else
				echo "khong co quyen doc"
			fi
	else
		echo "$1 khong phai la mot thu muc"
	fi
}
function calculate(){
	kq=0
	kq=$(($1 $2 $3))
	echo -e "\nKet qua: $1 $2 $3 = $kq"
}
i=0
while [ $i -eq 0 ]
	do 
		echo -e "\n=============Menu====================="
		echo "1. Xoa cac file"
		echo "2. Coppy cac file"
		echo "3. Dem file"
		echo "4. Tinh toan"
		echo "5. Thoat"
		echo -e -n "\nNhap lua chon: "
		read choice
		case $choice in
			1)
				echo -n "Nhap cac file muon xoa ngan cach bang dau cach: "
				read rm
				remove_file $rm
				;;
			2)
				echo -n "Nhap cac file muon coppy ngan cach bang dau cach: "
				read list_file
				cp_file $list_file
				;;
			3)
				echo -n "Nhap thu muc muon dem file: "
				read tm
				kiemtra_tm $tm
				;;
			4)
				echo -n "Nhap vao toan hang 1: "
				read toan_hang1
				echo -n "Nhap vao phep toan: "
				read phep_toan
				echo -n "Nhap vao toan hang 2: "
				read toan_hang2
				calculate $toan_hang1 $phep_toan $toan_hang2
				;;
			5)
				i=1
				echo "Da thoat!"
				;;
			*)
				echo "Vui long chon 1, 2, 3, 4 hoac 5"
				;;
		esac
done