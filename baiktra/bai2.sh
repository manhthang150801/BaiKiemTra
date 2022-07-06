echo Nhap he so cua x^2:
read a
echo Nhap he so cua x:
read b
echo nhap he so cua c:
read c
f=`echo "-($b)" |bc`
p=`expr 2 \* $a`
if [ $a -ne 0 ]
then
    d=`echo \( \( $b \* $b \) - \( 4 \* $a \* $c \) \) | bc`    
    if [ $d -lt 0 ]
    then
        x=`echo "-($d)" | bc`
        s=`echo "scale=2; sqrt ( $x )" | bc`
        echo Nghiem dau tien la:
        echo "($f + $s i) / $p"
        echo Nghiem thu hai la:
        echo "($f - $s i) / $p"
        
    elif [ $d -eq 0 ]
    then
        res=`expr $f / $p`
        echo Nghiem la: $res
    else
        s=`echo "scale=2; sqrt( $d )" | bc`
        res1=`echo "scale=2; ( $f + $s) / ( $p )"|bc`
        res2=`echo "scale=2; ( $f - $s) / ( $p )"|bc`
        echo Nghiem dau tien la: $res1
        echo Nghiem thu hai la: $res2
    fi
else
    echo He so cua x^2 khong phai la 0.
fi
