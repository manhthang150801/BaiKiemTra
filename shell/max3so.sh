#!/bin/bash

if [ $1 -gt $2 -a $2 -gt $3 ]; then
echo "so $1 la so lon nhat"
elif [ $2 -gt $1 -a $1 -gt $3 ]; then
echo "so $2 la so lon nhat"
else 
echo "so $3 la so lon nhat"
fi

