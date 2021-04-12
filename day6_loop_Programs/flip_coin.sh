#!/bin/bash
Result=$((RANDOM%2))
cnt=0
while [ $cnt -lt 20 ]
do
	if [ $Result -eq 0 ]; then
    	echo HEADS
	elif [ $Result -eq 1 ]; then
    	echo TAILS
	fi
	if [ HEADS -eq 11 ]
	echo STOP
	else
        echo STOP
	fi
	((cnt+))
done
