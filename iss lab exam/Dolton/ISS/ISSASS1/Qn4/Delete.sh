#!/bin/bash
cat ~/bin/Qn2/Database.txt
data=$( cat ~/bin/Qn2/Database.txt )
atrm $1
IFS=$'\n'
arr=( $data )
for i in ${!arr[@]};
do
	tmp=$( echo "${arr[$i]}" | awk '{print $3}' )
	if [ "$tmp" == "$1" ]
	then
		arr[$i]=-1
		break
	fi
done
echo "" > ~/bin/Qn2/Database.txt
for i in ${arr[@]};
do
	if [ "$i" != "-1" ]
	then
		echo "$i" >> ~/bin/Qn2/Database.txt
	fi
done
clear
cat ~/bin/Qn2/Database.txt
