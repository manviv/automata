#!/bin/bash
#echo "enter number $number"
#read number
number=$1
default=10

value()
if [[ $number -le 10 ]]; then
  #statements
  echo "$default"
elif [[ $number -gt $default ]]; then
  #statementss
  echo "$number"
fi

range=$(value)
#echo $range
final=$((range-1))
#echo $final
#echo "Pass to next fuction $range"

for i in $(eval echo "{0..$final}") ;
do
  echo "$i, $RANDOM"
done
