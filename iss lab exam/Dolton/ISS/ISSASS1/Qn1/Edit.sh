#!/bin/bash
read -p "Enter the song name to be edited : " sn
echo "Enter field to be edited : "
echo "1) Title"
echo "2) Artist"
echo "3) Album"
echo "4) Genre"
read tmp
if [ "$tmp" == "1" ]
then
	read -p "Enter the new Title : " tmp
	IFS=$'\n'
	declare -i f=0
	for i in $( cat ~/bin/Qn1/Database.txt );
	do
		IFS=$' '
		tmparr=($i)
		if [ "${tmparr[1]}" == "$sn" ]
		then
			al=""
			al+="${tmparr[0]}"
			al+=" "
			al+="$tmp"
			al+=" "
			al+="${tmparr[2]}"
			al+=" "
			al+="${tmparr[3]}"
			al+=" "
			al+="${tmparr[4]}"
			grep -v "$sn" ~/bin/Qn1/Database.txt > ~/bin/Qn1/temp && mv ~/bin/Qn1/temp ~/bin/Qn1/Database.txt
			echo "$al" >> ~/bin/Qn1/Database.txt
			break
		fi
		IFS=$'\n'
	done
fi
if [ "$tmp" == "2" ]
then
	read -p "Enter the new Artist : " tmp
	IFS=$'\n'
	declare -i f=0
	for i in $( cat ~/bin/Qn1/Database.txt );
	do
		IFS=$' '
		tmparr=($i)
		if [ "${tmparr[1]}" == "$sn" ]
		then
			al=""
			al+="${tmparr[0]}"
			al+=" "
			al+="${tmparr[1]}"
			al+=" "
			al+="$tmp"
			al+=" "
			al+="${tmparr[3]}"
			al+=" "
			al+="${tmparr[4]}"
			grep -v "$sn" ~/bin/Qn1/Database.txt > ~/bin/Qn1/temp && mv ~/bin/Qn1/temp ~/bin/Qn1/Database.txt
			echo "$al" >> ~/bin/Qn1/Database.txt
			break
		fi
		IFS=$'\n'
	done
fi
if [ "$tmp" == "3" ]
then
	read -p "Enter the new Album : " tmp
	IFS=$'\n'
	declare -i f=0
	for i in $( cat ~/bin/Qn1/Database.txt );
	do
		IFS=$' '
		tmparr=($i)
		if [ "${tmparr[1]}" == "$sn" ]
		then
			al=""
			al+="${tmparr[0]}"
			al+=" "
			al+="${tmparr[1]}"
			al+=" "
			al+="${tmparr[2]}"
			al+=" "
			al+="$tmp"
			al+=" "
			al+="${tmparr[4]}"
			grep -v "$sn" ~/bin/Qn1/Database.txt > ~/bin/Qn1/temp && mv ~/bin/Qn1/temp ~/bin/Qn1/Database.txt
			echo "$al" >> ~/bin/Qn1/Database.txt
			break
		fi
		IFS=$'\n'
	done
fi
if [ "$tmp" == "4" ]
then
	read -p "Enter the new Genre : " tmp
	IFS=$'\n'
	declare -i f=0
	for i in $( cat ~/bin/Qn1/Database.txt );
	do
		IFS=$' '
		tmparr=($i)
		if [ "${tmparr[1]}" == "$sn" ]
		then
			al=""
			al+="${tmparr[0]}"
			al+=" "
			al+="${tmparr[1]}"
			al+=" "
			al+="${tmparr[2]}"
			al+=" "
			al+="${tmparr[3]}"
			al+=" "
			al+="$tmp"
			grep -v "$sn" ~/bin/Qn1/Database.txt > ~/bin/Qn1/temp && mv ~/bin/Qn1/temp ~/bin/Qn1/Database.txt
			echo "$al" >> ~/bin/Qn1/Database.txt
			break
		fi
		IFS=$'\n'
	done
fi
