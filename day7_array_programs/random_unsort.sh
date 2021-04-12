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

largest=${number[0]}
secondGreatest='unset'
smallest=${number[9]}
secondSmallest='unset'

for((i=1; i < ${#number[@]}; i++))
do
  if [[ ${number[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${number[i]}
  elif (( ${number[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${number[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${number[i]}
  fi
done

for((i=1; i < ${#number[@]}; i++))
do
  if [[ ${number[i]} < $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${number[i]}
  elif (( ${number[i]} != $smallest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${number[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${number[i]}
  fi
done

echo "secondGreatest = $secondGreatest"
echo "secondSmallest = $secondSmallest"
