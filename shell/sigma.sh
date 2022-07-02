if [ $# -lt 2 ]; then
echo "Nhap thieu doi so"
else
if [ $1 -gt $2 ]; then
let "max = $1"
let "min = $2"
else
let "max = $2"
let "min = $1"
fi

let "i = $min"
let "tong = 0"

while [ $i -le $max ]; do
let "tong = $tong + $i"
let "i = $i + 1"
done

echo "Ket qua la $tong"
fi



