#!/bin/bash
echo "notify-send $1 $2" | at -t $3
tmp=""
tmp+="$1 $2 "
declare -i c=0
IFS=$'\n'
max="-1"
ans=""
for i in $( at -l );
do
	if [ "$( echo "$max < $( echo "$i" | awk '{print $1}' )" | bc )" == "1" ]
	then
		max="$( echo "$i" | awk '{print $1}' )"
		ans="$i"
	fi
done
tmp+=$( echo "$ans" | awk '{print $1 " " $2 " " $3 " " $4 " " $5 " " $6}' )
echo "$tmp" >> ~/bin/Qn2/Database.txt
clear
