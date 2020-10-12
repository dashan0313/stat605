#!/bin/bash

echo "usage: $0 <dir> <n>" 1>&2

my_dir=$1
byte=$2

#check first argument
if [ ! -d $my_dir ]; then
	echo "ERROR: the first input is not a directory" 1>&2
	exit 1
elif [ $# != 2 ];then
	echo "ERROR: wrong number of input parameters" 1>&2
	exit 1
fi

find $my_dir -size +"$byte"c | { while read line; do
if [ -f $line ]; then rm -r $line; echo "remove file $line"; fi;
done;}

