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
echo "${dictionary[@]}"
