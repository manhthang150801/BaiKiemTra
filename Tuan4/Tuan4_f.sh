echo "Nhap vao ten mot folder: "
read file
if [ -d "$file" ]; then
  echo " ${file}..."
	for entry in `ls $file`; do
	
	    if [ ! -s $file/$entry ]
		then
			echo $entry
		fi
	done
else
  echo "${file} khong tim thay."
  exit 1
fi
