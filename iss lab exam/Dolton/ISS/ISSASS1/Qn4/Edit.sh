#!/bin/bash
cat ~/bin/Qn2/Database.txt
read -p "Enter the id of the reminder to be edited : " id
echo "Enter the field to be edited"
echo "1-Name"
echo "2-Message"
echo "3-Date and Time"
read no
IFS=$'\n'
for i in $( cat ~/bin/Qn2/Database.txt );
do
	tmp=$( echo "$i" | awk '{print $3}' )
	if [ "$tmp" == "$id" ]
	then
		break
	fi
done
IFS=$' '
arr=( $i )
name=${arr[0]}
mssg=${arr[1]}
time=${arr[6]}
tmp="$( grep -v "$name" ~/bin/Qn2/Database.txt )"
> ~/bin/Qn2/Database.txt
echo "$tmp" > ~/bin/Qn2/Database.txt
if [ "$no" == "1" ]
then
	read -p "Enter the new Name : " name
fi
if [ "$no" == "2" ]
then
	read -p "Enter the new Message : " mssg
fi
if [ "$no" == "3" ]
then
	read -p "Enter the new Time (Eg. 201901261613) : " time
fi
tmp=""
tmp+="$name $mssg "
declare -i c=0
IFS=$'\n'
max="-1"
ans=""
time="$( echo "$time" | awk -F: '{print $1 ":" $2}' )"
echo "notify-send $name $mssg" | at $time
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
atrm $id
clear
