#!/bin/bash
MAXCOUNT=100
count=1
while [ "$count" -le $MAXCOUNT ]; do
 randomNumber=$(((RANDOM%900)+100))
 number[$count]=$randomNumber
 let "count += 1"
done

echo "${number[@]}"
echo "Repeating elements are "
for((i=0;i<MAXCOUNT;i++))
do
	for((j=i+1;j<MAXCOUNT;j++))
	do
		 if [[ ${number[i]} -eq ${number[j]} ]];
		 Then
			echo ${number[i]}
		 fi

	done
done

