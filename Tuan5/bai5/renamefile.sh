echo "Nhap ten dau file goc:"
read manh
echo "Ten moi:"
read thang
# Đổi tên tất cả các tệp phù hợp với mẫu
mv -- "$manh.txt" "$thang.txt"
echo "Các tệp đã được đổi tên."
