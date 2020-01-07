#!/bin/bash
echo "Enter sorting key : "
echo "1) Artist"
echo "2) Album"
echo "3) Genre"
read tmp
IFS=$'\n'
arr=()
declare -i size=0
for i in $( cat ~/bin/Qn1//Database.txt );
do
	arr+=( "$i" )
	let "size+=1"
done
if [ "$tmp" == "1" ]
then
	arr2=()
	for i in ${arr[@]};
	do
		IFS=$' '
		tmparr1=($i)
		f=1
		for k in arr2;
		do
			if [ "$k" == "${tmparr1[2]}" ]
			then
				f=0
			fi
		done
		if [ "$f" == "1" ]
		then
			IFS=$'\n'
			echo "${tmparr1[2]} : "
			arr2+="${tmparr1[2]}"
			for j in ${arr[@]};
			do
				IFS=$' '
				tmparr2=($j)
				if [ "${tmparr2[2]}" == "${tmparr1[2]}" ]
				then
					echo "$j"
				fi
				IFS=$'\n'
			done
		fi
		echo ""
		IFS=$'\n'
	done
fi
if [ "$tmp" == "2" ]
then
	arr2=()
	for i in ${arr[@]};
	do
		IFS=$' '
		tmparr1=($i)
		f=1
		for k in arr2;
		do
			if [ "$k" == "${tmparr1[3]}" ]
			then
				f=0
			fi
		done
		if [ "$f" == "1" ]
		then
			IFS=$'\n'
			echo "${tmparr1[3]} : "
			arr2+="${tmparr1[3]}"
			for j in ${arr[@]};
			do
				IFS=$' '
				tmparr2=($j)
				if [ "${tmparr2[3]}" == "${tmparr1[3]}" ]
				then
					echo "$j"
				fi
				IFS=$'\n'
			done
		fi
		echo ""
		IFS=$'\n'
	done
fi
if [ "$tmp" == "3" ]
then
	arr2=()
	for i in ${arr[@]};
	do
		IFS=$' '
		tmparr1=($i)
		f=1
		for k in arr2;
		do
			if [ "$k" == "${tmparr1[4]}" ]
			then
				f=0
			fi
		done
		if [ "$f" == "1" ]
		then
			IFS=$'\n'
			echo "${tmparr1[4]} : "
			arr2+="${tmparr1[4]}"
			for j in ${arr[@]};
			do
				IFS=$' '
				tmparr2=($j)
				if [ "${tmparr2[4]}" == "${tmparr1[4]}" ]
				then
					echo "$j"
				fi
				IFS=$'\n'
			done
		fi
		echo ""
		IFS=$'\n'
	done
fi
