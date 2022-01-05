#!/bin/bash
for (( a = 1; a < 10000000; a++ ))
do 
number=$RANDOM
echo $number >> 1.txt;
done
