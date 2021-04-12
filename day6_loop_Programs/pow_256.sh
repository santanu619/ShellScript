#!/bin/bash
pow=1
echo "Power Table:"
i=0
while [ $i -le 7 ];
do
        pow=$(($pow * 2))
	echo $pow
	((i++))
done
#echo $pow
