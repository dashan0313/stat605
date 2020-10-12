#!/bin/bash

echo "usage: $0 <column> [file.csv] that reads the columns specified by <column> (a positive number) from the comma-separated-values file (with
header) specified by [file.csv] (or from stdin if no [file.csv] is specified) and writes its mean (possibly rounded down)." 1>&2

#reads the columns specified by <column> (a positive number) from the comma-separated-values file (with
#header) specified by [file.csv] (or from stdin if no [file.csv] is specified) and
#writes its mean (possibly rounded down).

if [ $# -lt 1 -o $# -gt 2 ]; then
	exit 1
fi

col=$1
file=${2:-/dev/stdin}

cat $file |cut -d"," -f $col | tail -n +2 | { 
my_sum=0;
my_number=0;

while read line;
do
	my_sum=$(( $my_sum + $line ));
	my_number=$(( $my_number + 1 ));
done;echo $[ my_sum / my_number ];}
