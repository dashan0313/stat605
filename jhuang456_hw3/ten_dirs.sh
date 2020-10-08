#!/bin/bash

mkdir ten

str1="ten/dir"

seq -w 0 1 10 | { while read line; do
mkdir $str1$line;
echo -e "1 "> $str1$line"/file1.txt";echo -e "2\n2" >$str1$line"/file2.txt";
echo -e "3\n3\n3" > $str1$line"/file3.txt";echo -e "4\n4\n4\n4" >$str1$line"/file4.txt";
done; } 
