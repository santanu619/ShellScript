#!/bin/bash
pow=1
echo "Enter the number"
read N
echo "Power Table:"
for((i=0;i<=N;i++))
do
	pow=$(($pow * 2))
	echo $pow
done
