#!/bin/sh
a=`expr $2 \* $2`
b=`expr 100000 \* $1 / $a`

if [ $b -ge 185 ]&&[ $b -lt 230 ]
then
  echo "정상체중입니다"
fi

if [ $b -lt 185 ]
then
  echo "저체중입니다"
fi

if [ $b -ge 230 ]
then
  echo "과체중입니다"
fi

exit 0

