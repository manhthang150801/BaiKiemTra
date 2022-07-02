#!/bin/bash

if [ $1 -lt 18 ] ; then
echo "ban chua truong thanh"
elif [ $1 -gt 17 -a $1 -lt 30 ]; then
echo "ban da truong thanh"
elif [ $1 -gt 29 -a $1 -lt 60 ]; then
echo "ban da trung nien roi day du tinh gi chua"
else 
echo "ban da gia roi nghi ngoi di nhe"
fi

