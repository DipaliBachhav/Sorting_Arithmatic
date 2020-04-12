#!/bin/bash -x
echo "Arithamtic Computation And Sorting"

#Take User Inputs a,b,c
read -p "Enter The value Of a := " a
read -p "Enter The Value Of b := " b
read -p "Enter The Value Of c := " c

#Computation Of Expression
result1=$(( $a+$b*$c ))
echo "$result1"

result2=$(( $a*$b+$c ))
echo "$result2"

result3=$(( $c+$a/$b ))
echo "$result3"

result4=$(( $a%$b+$c ))
echo "$result4"

#created Dictionary
declare -A dictionary
dictionary[1]=$result1
dictionary[2]=$result2
dictionary[3]=$result3
dictionary[4]=$result4

#Store Result In Dictionary
echo "${!dictionary[@]}"
echo "${dictionary[@]}"
#Created Array And Store Dictionary Value In Array
declare -A array
key=1
for key in ${!dictionary[@]};
do
	array[$key]=${dictionary[$key]}
done
echo "${array[@]}"

#Store Array In Descending Order
for(( i=1; i<=4; i++ ))
do
	for(( j=$((i+1)); j<=4; j++ ))
	do
	if [[ ${array[$i]} -lt ${array[$j]} ]]
	then
		temp=${array[$i]}
		array[$i]=${array[$j]}
		array[$j]=$temp
	fi
	done
done
echo "${array[@]}"

#Store Array In Ascending Order
for(( i=1; i<=4; i++ ))
do
        for(( j=$((i+1)); j<=4; j++ ))
        do
        if [[ ${array[$i]} -gt ${array[$j]} ]]
        then
                temp=${array[$j]}
                array[$j]=${array[$i]}
                array[$i]=$temp
        fi
        done
done
echo "${array[@]}"
