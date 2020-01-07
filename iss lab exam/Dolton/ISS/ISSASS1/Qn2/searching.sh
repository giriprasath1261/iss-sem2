#!/bin/bash
if [ "$3" == "" ]
then
	if [ "$1" != "" ]
	then
		if [ "$2" != "" ]
		then
			wget -q -O index.html "$2"
			x="$( cat ./index.html )"			
			declare -i c=$( echo "$x" | grep -o -i "$1 \| $1\| $1 \|^$1\|$1$\|^$1$" | wc -l)
			clear
		else
			echo "Invalid Input"
		fi
	else
		echo "Invalid Input"
	fi
else
	echo "Invalid Input"
fi
if [ "$x" == "" ]
then
	echo "Invalid web address"
else
	printf "%s %d\n" "$1" "$c";
fi
rm index.html
