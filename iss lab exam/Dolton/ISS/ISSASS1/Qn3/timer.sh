#!/bin/bash
declare -i c=1
declare -i k=0
declare -i tmp1="$( date | awk '{print $4}' | cut -c 1,2 )"
tmp="$( date | awk '{print $4}' | cut -c 4,5 )"
declare -i tmp2="$( echo "$tmp" | sed -e 's/^[0]*//' )"
let "tmp2+=1"
if [ "$tmp2" == "60" ]
then
	tmp2=0
	let "tmp1+=1"
	if [ "$tmp1" == "24" ]
	then
		tmp1=0
	fi
fi
tmp4="$tmp1"
tmp5="$tmp2"
if [ "$( echo "$tmp1/10==0" | bc )" == "1" ]
then
	tmp4="0$tmp1"
fi
if [ "$( echo "$tmp2/10==0" | bc )" == "1" ]
then
	tmp5="0$tmp2"
fi
tmp3="$tmp4:$tmp5"
yo="$tmp3"
while [ $c -le $1 ]
do
	echo "#$c work"
	k=1
	sleep $k
	tmp3="$( date -d "$tmp3 today + $k minutes" | awk '{print $4}' | cut -c 1,2,3,4,5)"
	if [ "$( echo "$c%4==0" | bc )" == "1" ]
	then
		echo "#$c long break time"
		k=5
	fi
	if [ "$( echo "$c%4==0" | bc )" == "0" ]
	then
		echo "#$c break time"
		k=1
	fi
	sleep $k
	tmp3="$( date -d "$tmp3 today + $k minutes" | awk '{print $4}' | cut -c 1,2,3,4,5)"	
	let "c+=1"
done
clear
echo "Timer will start at $yo"
