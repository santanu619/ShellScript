#!/bin/bash
#script to find the largest prime factor of a given number

#print dialog to user to get the number
echo "Kindly enter the number!"

#get number from the user
read number

#print number entered to the user
echo "You entered the number:"$number

#initialize for loop
result=0
flag=0
halfNumber=$(echo "$number/2" | bc )
#echo "Half Number is: "$halfNumber
i=$(($halfNumber))

#start check for prime number
if [ $( echo "$number" | ./checkPrime.sh ) -eq 1 ]
then
	result=$number
fi

#secondary check
if [ $result -eq 0 ]
then
	echo "secondary check $i"
	while [ $( echo "$i >= 1" | bc ) -eq 1 ] && [ $flag -eq 0 ]
	do
		if [ $( echo "$i" | ./checkPrime.sh ) -eq 1 ] && [ $( echo "$number % $i" | bc ) -eq 0 ]
		then
			flag=1
			#echo "flag is high"
			result=$i
		fi
		echo "$i"
		i=$(($i-1))
	done
fi
