#!/bin/bash

cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d"," -f 7 | { my_sum=0;number=0; while read line; do
my_sum=$(( $my_sum + $line ));number=$(( $number + 1)); 
done; echo $[my_sum / number]; }
