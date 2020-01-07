#!/bin/bash
arr=()
IFS=$'\n'
tmp2="$( ls -Rl )"
for i in $tmp2;
do
	if [ "$( echo $i | awk '{print $9}' )" != "" ]
	then
		ans=""
		ans+="$( echo $i | awk '{print $6 "_" $7}' ) $( echo $i | awk '{print $8}' )"
		ans+=" ./$( find * | grep $( echo $i | awk '{print $9}' ) | head -n 1 )"
		arr+=( "$ans" )
	fi
done
declare -i c=0
touch 2018111007.txt
> 2018111007.txt
max="0"
IFS=$'\n'
for i in $( man -k . | awk '{print $1}' );
do
	tmp="$( echo "$i" | cut -c 1,2 )"
	if [ "$tmp" == "lo" ]
	then
		echo "$( man -f $i | head -n 1 | sed -e 's/(.)//' )" >> 2018111007.txt
		if [ $( man -f $i | head -n 1 | sed -e 's/(.)//' | wc | awk '{print $3}') -ge $max  ]
		then
			max="$( man -f $i | head -n 1 | sed -e 's/(.)//' | wc | awk '{print $3}')"
		fi
	fi
done
clear
for i in ${arr[@]};
do
	echo $i
done
echo "Number of lines = $( cat 2018111007.txt | wc -l )"
IFS=$'\n'
echo "Max length of line = $max"
cp 2018111007.txt ./backup_file.bak
sed -i 's/function/method/g' 2018111007.txt
