#!/bin/bash
arr=()
IFS=$'\n'
mkdir "$2""Bad"
mkdir "$2""Average"
mkdir "$2""Good"
mkdir "$2""Awesome"
for i in $( cat $1 );
do
	arr+="$( cut -d ":" -f 2 <<< "$i" ) "
done
arr1=( $( cat $1 ) )
for i in ${!arr1[@]};
do
	arr1[i]="$( echo "${arr1[i]}" | awk -F: '{print $1}' )"
done
IFS=$' '
declare -i c=0
for i in ${arr[@]};
do
	if [ "$( echo "$i < 5" | bc )" == "1" ]
	then
		touch "$2""Bad/""${arr1[$c]}"".mp4"
	fi
	if [ "$( echo "$i >= 5" | bc )" == "1" ]
	then
		if [ "$( echo "$i < 8" | bc )" == "1" ]
		then
			touch "$2""Average/""${arr1[$c]}"".mp4"
		fi
	fi
	if [ "$( echo "$i >= 9" | bc )" == "1" ]
	then
		touch "$2""Awesome/""${arr1[$c]}"".mp4"
	fi
	if [ "$( echo "$i >= 8" | bc )" == "1" ]
	then
		if [ "$( echo "$i < 9" | bc )" == "1" ]
		then
			touch "$2""Good/""${arr1[$c]}"".mp4"
		fi
	fi
	let "c+=1"
done
