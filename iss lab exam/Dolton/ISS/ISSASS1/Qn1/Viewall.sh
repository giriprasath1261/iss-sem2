#!/bin/bash
IFS=$'\n'
x=$( cat ~/bin/Qn1/Database.txt )
tmp="ID"
printf "%10s" $tmp;
tmp="Title"
printf "%10s" $tmp;
tmp="Artist"
printf "%10s" $tmp;
tmp="Album"
printf "%10s" $tmp;
tmp="Genre"
printf "%10s" $tmp;
printf "\n";
for i in $x;
do
	IFS=$' '
	for j in $i;
	do
		printf "|%10s|" $j;
	done
	printf "\n";
	IFS=$'\n'
done
