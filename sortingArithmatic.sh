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
