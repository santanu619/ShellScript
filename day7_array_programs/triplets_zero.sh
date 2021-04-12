#!/bin/bash
array=(1 -1 0 2 -2 0 3 4 0 3 2 -1)
echo ${array[@]}
for((i=0;i<10;i++))
do
  for((j=i+1;j<11;j++))
  do
    for((k=j+1;k<12;k++))
     do
        if [ (($array[i])+($array[j])+($array[k])) -eq 0 ]
	 then 
		echo ${array[i]} ${array[j]} ${array[k]}   
        fi
    done
done
