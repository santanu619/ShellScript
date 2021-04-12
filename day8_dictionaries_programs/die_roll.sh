#!/bin/bash
counter=1
MAXCOUNT=1000
#result[@]=0
while $1:
do 
 die=$(((RANDOM%6)+1))
 echo $die
 result[@]=$die
 for((i=0;i<MAXCOUNT;i++))
  do
     if[${result[i]} -eq 10];
     then
	echo ${result[@]}
     fi
done
largest=${die[@]}
highest='unset'
smallest=${die[@]}
lowest='unset'

for((i=1; i < ${die[@]}; i++))
do
  if [[ ${die[i]} -gt $largest ]]
  then
    highest=$largest
    largest=${die[i]}
  elif (( ${die[i]} -ne $largest )) && { [[ "$secondGreatest" -eq "unset" ]] || [[ ${die[i]} -gt $largest ]]; }
  then
    highest=${die[i]}
  fi
done

for((i=1; i < ${#die[@]}; i++))
do
  if [[ ${die[i]} -lt $smallest ]]
  then
    lowest=$smallest
    smallest=${die[i]}
  elif (( ${die[i]} -ne $lowest )) && { [[ "$lowest" -eq "unset" ]] || [[ ${die[i]} -lt $lowest ]]; }
  then
    lowest=${die[i]}
  fi
done

echo ${!result[@]}
echo highest=$highest
echo smallest=$smallest
