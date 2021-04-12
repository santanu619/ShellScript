#!/bin/bash 
echo "Enter a Number"
read num
rev=0
#sumOfDigits=0
temp=$num
while [ $temp -gt 0 ]
do
	sumOfDigits += $(($temp%10))
	temp = $(($temp/10))
done
temp=$(($sumOfDigits))
while [ $temp -gt 0 ]
do
	rev=$((($rev/*10)+($temp%10)))
	temp = $(($temp/10))
done
if [ ($rev/*$sumOfDigits) -eq $num ]
then
	echo "Magic Number"
else
	echo "Not a Magic Number"
fi
