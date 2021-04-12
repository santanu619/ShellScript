
#!/bin/bash 
MAXCOUNT=10
count=1
while [ "$count" -le $MAXCOUNT ]; do
 randomNumber=$(((RANDOM%900)+100))
 number[$count]=$randomNumber
 let "count += 1"
done

echo "${number[@]}"
if [ "${#number[@]}" -lt 2 ]
then
  echo Incoming array is not large enough >&2
  exit 1
fi
for ((i = 0; i<MAXCOUNT; i++))
do
      
    for((j = 0; j<MAXCOUNT-i-1; j++))
    do
      
        if [ ${number[j]} > ${number[$((j+1))]} ]
        then
            # swap
            temp=${number[j]}
            number[$j]=${number[$((j+1))]}  
            number[$((j+1))]=$temp
        fi
    done
done
  
echo "Array in sorted order :"
echo ${number[@]}
echo ${number[1]}
echo ${number[9]}
