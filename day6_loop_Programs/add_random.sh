#!/bin/bash
MAXCOUNT=10
count=1
sum=0
while [ "$count" -le $MAXCOUNT ]; do
 randomNumber=$(((RANDOM%90)+10))
 number[$count]=$randomNumber
 let "count += 1"
 	sum+=$((number[$i]))

done
echo "${number[@]}"
echo $sum
